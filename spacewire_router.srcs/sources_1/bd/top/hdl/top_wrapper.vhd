
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_wrapper is
end top_wrapper;

architecture STRUCTURE of top_wrapper is

signal port_1_data_t : std_logic;
signal port_1_data_f : std_logic;   
signal port_1_strobe_t : std_logic;
signal port_1_strobe_f : std_logic; 

signal port_2_data_t : std_logic;
signal port_2_data_f : std_logic;   
signal port_2_strobe_t : std_logic;
signal port_2_strobe_f : std_logic;     
  
signal port_1_latch_out_data_t :std_logic;
signal port_1_latch_out_data_f :std_logic;
signal port_1_latch_out_strobe_t :std_logic;
signal port_1_latch_out_strobe_f :std_logic;
signal port_1_ack:std_logic;

signal port_2_latch_out_data_t :std_logic;
signal port_2_latch_out_data_f :std_logic;
signal port_2_latch_out_strobe_t :std_logic;
signal port_2_latch_out_strobe_f :std_logic;
signal port_2_ack:std_logic;

---------------------------------------------------------
signal port_1_data_t_out : std_logic;
signal port_1_data_f_out : std_logic;   
signal port_1_strobe_t_out : std_logic;
signal port_1_strobe_f_out : std_logic; 

signal port_2_data_t_out : std_logic;
signal port_2_data_f_out : std_logic;   
signal port_2_strobe_t_out : std_logic;
signal port_2_strobe_f_out : std_logic;     
  
signal port_1_latch_out_data_t_out :std_logic;
signal port_1_latch_out_data_f_out :std_logic;
signal port_1_latch_out_strobe_t_out :std_logic;
signal port_1_latch_out_strobe_f_out :std_logic;
signal port_1_ack_out:std_logic;

signal port_2_latch_out_data_t_out :std_logic;
signal port_2_latch_out_data_f_out :std_logic;
signal port_2_latch_out_strobe_t_out :std_logic;
signal port_2_latch_out_strobe_f_out :std_logic;
signal port_2_ack_out:std_logic;

begin

port_1_latch : entity work.latch
port map(
    x1_t =>  port_1_data_t,
    x1_f =>  port_1_data_f,
    x0_t =>  port_1_strobe_t,
    x0_f =>  port_1_strobe_f,
    y_ack => port_1_ack,
      
    y1_t => port_1_latch_out_data_t,  
    y1_f => port_1_latch_out_data_f,  
    y0_t =>  port_1_latch_out_strobe_t,
    y0_f => port_1_latch_out_strobe_f, 
    x_ack => open
);

port_2_latch : entity work.latch
port map(
    x1_t =>  port_2_data_t,
    x1_f =>  port_2_data_f,
    x0_t =>  port_2_strobe_t,
    x0_f =>  port_2_strobe_f,
    y_ack => port_2_ack,
      
    y1_t => port_2_latch_out_data_t,  
    y1_f => port_2_latch_out_data_f,  
    y0_t =>  port_2_latch_out_strobe_t,
    y0_f => port_2_latch_out_strobe_f, 
    x_ack => open
);

cross : entity work.CROSS2X2
port map(
    in_port_1_data_t    => port_1_latch_out_data_t,
    in_port_1_data_f    => port_1_latch_out_data_f,
    in_port_1_strobe_t  => port_1_latch_out_strobe_t,
    in_port_1_strobe_f  => port_1_latch_out_strobe_f,
    
    in_port_2_data_t   => port_2_latch_out_data_t,
    in_port_2_data_f   => port_2_latch_out_data_f, 
    in_port_2_strobe_t => port_2_latch_out_strobe_t,
    in_port_2_strobe_f => port_2_latch_out_strobe_f, 
    
    out_port_1_data_t   => port_1_latch_out_data_t_out,
    out_port_1_data_f   => port_1_latch_out_data_f_out,
    out_port_1_strobe_t => port_1_latch_out_strobe_t_out,
    out_port_1_strobe_f => port_1_latch_out_strobe_f_out,
    
    out_port_2_data_t   => port_2_latch_out_data_t_out,
    out_port_2_data_f   => port_2_latch_out_data_f_out,
    out_port_2_strobe_t => port_2_latch_out_strobe_t_out,
    out_port_2_strobe_f => port_2_latch_out_strobe_f_out,
    
    address_t         => (others=>'0'), 
    address_f         => (others=>'0'), 
    addres_ack        => open,  
    
    out_port_1_ack   => port_1_ack,   
    out_port_2_ack   => port_2_ack,   
    in_port_1_ack   => port_1_ack_out,    
    in_port_2_ack    => port_2_ack_out   
);

port_1_out_latch : entity work.latch
port map(
    x1_t =>  port_1_data_t_out,
    x1_f =>  port_1_data_f_out,
    x0_t =>  port_1_strobe_t_out,
    x0_f =>  port_1_strobe_f_out,
    y_ack => '0',
      
    y1_t => port_1_latch_out_data_t_out,  
    y1_f => port_1_latch_out_data_f_out,  
    y0_t =>  port_1_latch_out_strobe_t_out,
    y0_f => port_1_latch_out_strobe_f_out, 
    x_ack => port_1_ack_out
);

port_2_out_latch : entity work.latch
port map(
    x1_t =>  port_2_data_t_out,
    x1_f =>  port_2_data_f_out,
    x0_t =>  port_2_strobe_t_out,
    x0_f =>  port_2_strobe_f_out,
    y_ack => '0',
      
    y1_t => port_2_latch_out_data_t_out,  
    y1_f => port_2_latch_out_data_f_out,  
    y0_t =>  port_2_latch_out_strobe_t_out,
    y0_f => port_2_latch_out_strobe_f_out, 
    x_ack => port_2_ack_out
);

end STRUCTURE;
