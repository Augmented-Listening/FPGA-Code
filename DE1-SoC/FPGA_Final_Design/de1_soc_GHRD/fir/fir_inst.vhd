	component fir is
		port (
			begin_load_reset_n   : in  std_logic                     := 'X';             -- reset_n
			clk_clk              : in  std_logic                     := 'X';             -- clk
			input_data           : in  std_logic_vector(18 downto 0) := (others => 'X'); -- data
			input_valid          : in  std_logic                     := 'X';             -- valid
			input_error          : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- error
			input_startofpacket  : in  std_logic                     := 'X';             -- startofpacket
			input_endofpacket    : in  std_logic                     := 'X';             -- endofpacket
			output_data          : out std_logic_vector(31 downto 0);                    -- data
			output_valid         : out std_logic;                                        -- valid
			output_error         : out std_logic_vector(1 downto 0);                     -- error
			output_startofpacket : out std_logic;                                        -- startofpacket
			output_endofpacket   : out std_logic;                                        -- endofpacket
			output_channel       : out std_logic_vector(2 downto 0);                     -- channel
			reset_reset_n        : in  std_logic                     := 'X';             -- reset_n
			slave_address        : in  std_logic_vector(9 downto 0)  := (others => 'X'); -- address
			slave_write          : in  std_logic_vector(0 downto 0)  := (others => 'X'); -- write
			slave_writedata      : in  std_logic_vector(15 downto 0) := (others => 'X')  -- writedata
		);
	end component fir;

	u0 : component fir
		port map (
			begin_load_reset_n   => CONNECTED_TO_begin_load_reset_n,   -- begin_load.reset_n
			clk_clk              => CONNECTED_TO_clk_clk,              --        clk.clk
			input_data           => CONNECTED_TO_input_data,           --      input.data
			input_valid          => CONNECTED_TO_input_valid,          --           .valid
			input_error          => CONNECTED_TO_input_error,          --           .error
			input_startofpacket  => CONNECTED_TO_input_startofpacket,  --           .startofpacket
			input_endofpacket    => CONNECTED_TO_input_endofpacket,    --           .endofpacket
			output_data          => CONNECTED_TO_output_data,          --     output.data
			output_valid         => CONNECTED_TO_output_valid,         --           .valid
			output_error         => CONNECTED_TO_output_error,         --           .error
			output_startofpacket => CONNECTED_TO_output_startofpacket, --           .startofpacket
			output_endofpacket   => CONNECTED_TO_output_endofpacket,   --           .endofpacket
			output_channel       => CONNECTED_TO_output_channel,       --           .channel
			reset_reset_n        => CONNECTED_TO_reset_reset_n,        --      reset.reset_n
			slave_address        => CONNECTED_TO_slave_address,        --      slave.address
			slave_write          => CONNECTED_TO_slave_write,          --           .write
			slave_writedata      => CONNECTED_TO_slave_writedata       --           .writedata
		);

