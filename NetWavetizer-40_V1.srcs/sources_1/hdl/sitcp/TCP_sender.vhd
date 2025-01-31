library IEEE, mylib;
use IEEE.STD_LOGIC_1164.ALL;
use mylib.defSiTCP.all;
--use mylib.defTCP_sender.all;

entity TCP_sender is
  port(
    rst 					: in  std_logic;
    clk 					: in  std_logic;

    -- data from EVB --
    rdFromEVB		        : in  std_logic_vector(kWidthDataTCP-1 downto 0);
    rvFromEVB		        : in  std_logic;
    emptyFromEVB            : in  std_logic;
    reToEVB		            : out std_logic;

    -- data to SiTCP
    isActive		        : in  std_logic;
    afullTx		            : in  std_logic;
    weTx		            : out std_logic;
    wdTx		            : out std_logic_vector(kWidthDataTCP-1 downto 0)

    );
end TCP_sender;

architecture RTL of TCP_sender is

  signal delay_afull                                   : std_logic_vector(7 downto 0);
  --signal dAfull                                        : std_logic;

  attribute mark_debug : string;
  --attribute mark_debug of weTx                         : signal is "true";
  --attribute mark_debug of wdTx                         : signal is "true";
  --attribute mark_debug of afullTx                      : signal is "true";
  --attribute mark_debug of dAfull                       : signal is "true";
  
  -- signal declaration ---------------------------------------------------

-- ================================ body ==================================
begin
  -- signal connection ----------------------------------------------------

  -- FIFO read
  u_buffer_reader : process(RST, CLK)
  begin
    if(RST = '1') then
      weTx	<= '0';
      wdTx	<= (others => '0');
    elsif(CLK'event AND CLK = '1') then
      weTx	<= rvFromEVB;
      wdTx	<= rdFromEVB;

      if(emptyFromEVB = '0' AND isActive = '1' AND afullTx = '0') then
        reToEVB	<= '1';
      else
        reToEVB	<= '0';
      end if;
    end if;
  end process u_buffer_reader;
  
  -- for debug --
  --dAfull <= delay_afull(7);
  --u_delay_afull : process(CLK)
  --begin
  --  if(CLK'event AND CLK = '1') then
  --    delay_afull   <= delay_afull(6 downto 0) & afullTx;
  --  end if;
  --end process u_delay_afull;

end RTL;

