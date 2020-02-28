----------------------------------------------------------------------------------
-- Company: Labset
-- Engineer: José Noguera
-- 
-- Create Date: 04.12.2019 10:41:47
-- Design Name: Vegetation Indexes
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
   k_InputSelectionWidth : integer := 2
   
);
port ( 
   Pxl : in STD_LOGIC_VECTOR(kAXI_InputDataWidth-1 downto 0);
   Clk : in STD_LOGIC;
   Selection : in STD_LOGIC_VECTOR( k_InputSelectionWidth-1 downto 0);
   VegIndex : out STD_LOGIC_VECTOR(kAXI_OutputDataWidth-1 downto 0)
);
end VegetationIndexes;

architecture Behavioral of VegetationIndexes is
    signal Cive : std_logic_vector(kAxi_OutputDataWidth-1 downto 0) := (others => '0');
    signal ExG : std_logic_vector(kAxi_OutputDataWidth-1 downto 0) := (others => '0');

begin

Convertion: process (Clk)
    begin
        if rising_edge(Clk) then
            if (Selection = "10") then --ExG
                
                --def get_ExG(img):
                --    r, g, b = cv2.split(img)
                --    r_mx = np.amax(r)
                --    g_mx = np.amax(g)
                --    b_mx = np.amax(b)
                --    if (r_mx == 0):
                --        r_mx = 1
                --    if (g_mx == 0):
                --        g_mx = 1
                --    if (b_mx == 0):
                --        b_mx = 1
                --    r = r / r_mx
                --    g = g / g_mx
                --    b = b / b_mx
                --    denominator = r + g + b
                --    denominator = np.where(denominator == 0, 1, denominator)
                --    r = r / denominator
                --    g = g / denominator
            end if;
            if (Selection = "01") then --CIVE
                
                --# r'=r/(r+g+b) g'=g/(r+g+b) b'=b/(r+g+b)
                --def get_normalized(img):
                --    img = img.astype(np.uint16)
                --    denominator = img[:, :, 0] + img[:, :, 1] + img[:, :, 2]
                --    # Max 255+255+255, Min 1
                --    denominator = np.where(denominator == 0, 1, denominator)
                --    return cv2.merge((img[:, :, 0]/denominator, img[:, :, 1]/denominator, img[:, :, 2]/denominator))
                --def get_CIVE(img):
                --    img_norm = get_normalized(img)
                --    return 0.441*img_norm[:, :, 0]-0.811*img_norm[:, :, 1]+0.385*img_norm[:, :, 2]+18.78745
            end if;
        end if;
    end process Convertion;

VegIndex <= Cive when (Selection = "01") else
            ExG when (Selection = "10") else
            (others=>'0') when (Selection = "00") else
            (others=>'0');

end Behavioral;
