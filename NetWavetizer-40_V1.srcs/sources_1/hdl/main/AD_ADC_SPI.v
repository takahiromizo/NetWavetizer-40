/*******************************************************************************
*                                                                              *
* Function    : SPI interface for ADC of Analog devices corp.                  *
* Version     : v 0.1.0 2011/03/03                                             *
* Designer    : Tomohisa Uchida                                                *
*                                                                              *
*                Copyright (c) 2011 Tomohisa Uchida                            *
*                All rights reserved                                           *
*                                                                              *
*******************************************************************************/
module AD_ADC_SPI(
// System
   CLK            ,  // in   : System clock
   RST            ,  // in   : System reset(Asynchronous)
   TIM            ,  // in   : Periodic pulse for generating SPI-SCK
                     // (This period equals a half priod of SCK)
// RBCP I/F
   addrAD9637     ,  // in   : Address[12:0]
   execWRITE      ,  // in   : Write enable
   regToAD9637    ,  // in   : Write data[7:0]
   execREAD       ,  // in   : Read enable
   regFromAD9637  ,  // out  : Read data[7:0]
   ACK    	      ,  // out  : Access acknowledge
// ADC SPI
   SCK            ,  // out  : Clock
   CSB            ,  // out  : Chip select
   SDDIR          ,  // out  : Direction of the serial data line
   SDIN           ,  // in   : Serial data input
   SDOUT             // out  : Serial data output
);

//-------- Input/Output -------------
   input          CLK ;
   input          RST ;
   input          TIM ;

//   input          RBCP_SELECT ;
   input  [12:0]  addrAD9637     ;
   input          execWRITE      ;
   input  [7:0]   regToAD9637    ;
   input          execREAD       ;
   output [7:0]   regFromAD9637  ;
   output         ACK    		 ;

   output         SCK            ;
   output         CSB            ;
   output         SDDIR          ;
   input          SDIN           ;
   output         SDOUT          ;

//------ output signals -----
   wire   [7:0]   regFromAD9637  ;
   wire           ACK 		     ;
   wire           SCK            ;
   wire           CSB            ;
   wire           SDDIR          ;
   wire           SDOUT          ;

//------------------------------------------------------------------------------
// Input registers
//------------------------------------------------------------------------------
//   reg            irSel  ;
   reg    [12:0]  irAddr ;
   reg            irWe   ;
   reg    [7:0]   irWd   ;
   reg            irRe   ;
   reg            irTim  ;
   reg            irSdin ;

   always@ (posedge CLK) begin
//      irSel        <= RBCP_SELECT;
      irAddr[12:0] <= addrAD9637[12:0];
      irWe         <= execWRITE;
      irWd[7:0]    <= regToAD9637[7:0];
      irRe         <= execREAD;

      irTim        <= TIM;

      irSdin       <= SDIN;
   end

//------------------------------------------------------------------------------
// Main
//------------------------------------------------------------------------------
   reg             start    ;
   reg      [12:0] addr     ;
   reg             rdEnb    ;
   reg      [7:0]  wd       ;

   always@ (posedge CLK or posedge RST) begin
      if(RST)begin
         start <=  1'b0;
      end else begin
//			start <=  irSel & (irWe | irRe);
			start <=  irWe | irRe;
      end
   end

   always@ (posedge CLK) begin
      if(irWe | irRe)begin
         addr[12:0] <= irAddr[12:0];
         rdEnb      <= irRe;
         wd[7:0]    <= irWd[7:0];
      end
   end

   reg             rdShift    ;
   reg      [6:0]  timCntr    ;
   reg      [24:0] wdReg      ;

   always@ (posedge CLK or posedge RST) begin
      if(RST)begin
         rdShift        <= 1'b0  ;
         timCntr[6:0]   <= 7'h40 ;
         wdReg[24:0]    <= 25'd0 ;
      end else begin
         if(start)begin
            rdShift        <= 1'b0;
            timCntr[6:0]   <= 7'd0;
            wdReg[24:0]    <= {1'b0,rdEnb,2'b0,addr[12:0],wd[7:0]};
         end else if(irTim)begin
            timCntr[6:0]   <= (timCntr[6] ? 7'h40  : timCntr[6:0] + 7'd1);
            wdReg[24:0]    <= (timCntr[0] ? {wdReg[23:0],1'b0} : wdReg[24:0]  );
		    rdShift        <= ~timCntr[6] & ~(&timCntr[5:4]) &(timCntr[0] | rdShift);
         end
      end
   end

   reg            orCsB    ;
   reg            orDir    ;
   reg            orClk    ;
   reg            orSd     ;

   always@ (posedge CLK) begin
      orCsB <= ~(~timCntr[6] & (|timCntr[5:1]) & (~(&timCntr[5:4]) | ~(|timCntr[3:1])));
      orDir <= rdEnb & ~timCntr[6] & timCntr[5] & (timCntr[4:1]!=4'd0);
      orClk <= ~timCntr[6] & (timCntr[5:1]!=6'd0) & timCntr[0];
      orSd  <= wdReg[24];
   end

   reg		[3:0] drdShift;
	
   always@ (posedge CLK or posedge RST) begin
	 if(RST)begin
	   drdShift[3:0]	<= 4'b0;
	 end else begin
	   drdShift[3:0]	<= {drdShift[2:0], rdShift};
	 end
   end

   reg      [7:0] rdReg    ;

   always@ (posedge CLK) begin
      if(irTim)begin
//         rdReg[7:0]  <= (rdShift & ~timCntr[0] ? {rdReg[6:0],irSdin} : rdReg[7:0]);
         rdReg[7:0]  <= (drdShift[3] & ~timCntr[0] ? {rdReg[6:0],irSdin} : rdReg[7:0]);
      end
   end

   reg            accEnd         ;

   always@ (posedge CLK ) begin
      accEnd   <= (timCntr[6:0]==7'h30);
   end

   reg            rbcpAck        ;

   always@ (posedge CLK) begin
      rbcpAck  <= accEnd & (timCntr[6:0]!=7'h30);
   end
	
	reg		[3:0] drbcpAck;
	
	always@ (posedge CLK  or posedge RST) begin
		if(RST)begin
			drbcpAck[3:0]	<= 4'b0;
		end else begin
			drbcpAck[3:0]	<= {drbcpAck[2:0], rbcpAck};
		end
	end

   assign   regFromAD9637[7:0]   = rdReg[7:0];
   assign   ACK    		         = drbcpAck[3];
   assign   SCK                  = orClk;
   assign   CSB                  = orCsB;
   assign   SDDIR                = orDir;
   assign   SDOUT                = orSd;

//------------------------------------------------------------------------------
endmodule
