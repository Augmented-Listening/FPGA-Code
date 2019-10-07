	component coef_fifo is
		port (
			clk_clk       : in  std_logic                     := 'X';             -- clk
			in_writedata  : in  std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			in_write      : in  std_logic                     := 'X';             -- write
			out_readdata  : out std_logic_vector(15 downto 0);                    -- readdata
			out_read      : in  std_logic                     := 'X';             -- read
			reset_reset_n : in  std_logic                     := 'X'              -- reset_n
		);
	end component coef_fifo;

	u0 : component coef_fifo
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --   clk.clk
			in_writedata  => CONNECTED_TO_in_writedata,  --    in.writedata
			in_write      => CONNECTED_TO_in_write,      --      .write
			out_readdata  => CONNECTED_TO_out_readdata,  --   out.readdata
			out_read      => CONNECTED_TO_out_read,      --      .read
			reset_reset_n => CONNECTED_TO_reset_reset_n  -- reset.reset_n
		);

