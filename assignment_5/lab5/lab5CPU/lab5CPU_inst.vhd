	component lab5CPU is
		port (
			alien_shoot_external_connection_export              : in    std_logic                     := 'X';             -- export
			alien_x_external_connection_export                  : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- export
			alien_y_external_connection_export                  : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- export
			character_recieved_input_external_connection_export : in    std_logic                     := 'X';             -- export
			character_sent_input_external_connection_export     : in    std_logic                     := 'X';             -- export
			clk_clk                                             : in    std_logic                     := 'X';             -- clk
			game_time_external_connection_export                : in    std_logic_vector(31 downto 0) := (others => 'X'); -- export
			gun_left_external_connection_export                 : in    std_logic                     := 'X';             -- export
			gun_right_external_connection_export                : in    std_logic                     := 'X';             -- export
			gun_shoot_external_connection_export                : in    std_logic_vector(1 downto 0)  := (others => 'X'); -- export
			led_output_external_connection_export               : out   std_logic_vector(7 downto 0);                     -- export
			load_output_external_connection_export              : out   std_logic;                                        -- export
			parallel_input_external_connection_export           : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			parallel_output_external_connection_export          : out   std_logic_vector(7 downto 0);                     -- export
			random_number_external_connection_export            : in    std_logic_vector(15 downto 0) := (others => 'X'); -- export
			reset_reset_n                                       : in    std_logic                     := 'X';             -- reset_n
			sram_address_external_connection_export             : out   std_logic_vector(10 downto 0);                    -- export
			sram_data_external_connection_export                : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			sram_enable_read_external_connection_export         : out   std_logic;                                        -- export
			sram_enable_write_external_connection_export        : out   std_logic;                                        -- export
			transmit_enable_output_external_connection_export   : out   std_logic                                         -- export
		);
	end component lab5CPU;

	u0 : component lab5CPU
		port map (
			alien_shoot_external_connection_export              => CONNECTED_TO_alien_shoot_external_connection_export,              --              alien_shoot_external_connection.export
			alien_x_external_connection_export                  => CONNECTED_TO_alien_x_external_connection_export,                  --                  alien_x_external_connection.export
			alien_y_external_connection_export                  => CONNECTED_TO_alien_y_external_connection_export,                  --                  alien_y_external_connection.export
			character_recieved_input_external_connection_export => CONNECTED_TO_character_recieved_input_external_connection_export, -- character_recieved_input_external_connection.export
			character_sent_input_external_connection_export     => CONNECTED_TO_character_sent_input_external_connection_export,     --     character_sent_input_external_connection.export
			clk_clk                                             => CONNECTED_TO_clk_clk,                                             --                                          clk.clk
			game_time_external_connection_export                => CONNECTED_TO_game_time_external_connection_export,                --                game_time_external_connection.export
			gun_left_external_connection_export                 => CONNECTED_TO_gun_left_external_connection_export,                 --                 gun_left_external_connection.export
			gun_right_external_connection_export                => CONNECTED_TO_gun_right_external_connection_export,                --                gun_right_external_connection.export
			gun_shoot_external_connection_export                => CONNECTED_TO_gun_shoot_external_connection_export,                --                gun_shoot_external_connection.export
			led_output_external_connection_export               => CONNECTED_TO_led_output_external_connection_export,               --               led_output_external_connection.export
			load_output_external_connection_export              => CONNECTED_TO_load_output_external_connection_export,              --              load_output_external_connection.export
			parallel_input_external_connection_export           => CONNECTED_TO_parallel_input_external_connection_export,           --           parallel_input_external_connection.export
			parallel_output_external_connection_export          => CONNECTED_TO_parallel_output_external_connection_export,          --          parallel_output_external_connection.export
			random_number_external_connection_export            => CONNECTED_TO_random_number_external_connection_export,            --            random_number_external_connection.export
			reset_reset_n                                       => CONNECTED_TO_reset_reset_n,                                       --                                        reset.reset_n
			sram_address_external_connection_export             => CONNECTED_TO_sram_address_external_connection_export,             --             sram_address_external_connection.export
			sram_data_external_connection_export                => CONNECTED_TO_sram_data_external_connection_export,                --                sram_data_external_connection.export
			sram_enable_read_external_connection_export         => CONNECTED_TO_sram_enable_read_external_connection_export,         --         sram_enable_read_external_connection.export
			sram_enable_write_external_connection_export        => CONNECTED_TO_sram_enable_write_external_connection_export,        --        sram_enable_write_external_connection.export
			transmit_enable_output_external_connection_export   => CONNECTED_TO_transmit_enable_output_external_connection_export    --   transmit_enable_output_external_connection.export
		);

