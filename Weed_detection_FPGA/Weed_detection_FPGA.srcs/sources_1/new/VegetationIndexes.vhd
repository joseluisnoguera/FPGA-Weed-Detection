----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.12.2019 10:41:47
-- Design Name: 
-- Module Name: VegetationIndexes - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity VegetationIndexes is
generic (
   kAXI_InputDataWidth : integer := 24;
   kAXI_OutputDataWidth : integer := 8;
   k_InputSelectionWidth : integer := 3
);
port ( 
   Pxl : in STD_LOGIC_VECTOR(kAXI_InputDataWidth-1 downto 0);
   Clk : in STD_LOGIC;
   Selection : in STD_LOGIC_VECTOR( k_InputSelectionWidth-1 downto 0);
   VegIndex : out STD_LOGIC_VECTOR(kAXI_OutputDataWidth-1 downto 0)
);
end VegetationIndexes;

architecture Behavioral of VegetationIndexes is

begin

Convertion: process (Clk)
    begin
        
    end process Convertion;

end Behavioral;
