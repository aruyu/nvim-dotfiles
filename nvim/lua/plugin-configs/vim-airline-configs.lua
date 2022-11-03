--[[
--  NOTE      - vim-airline-configs.lua
--  Author    - Eira Chae
--
--  Created   - 2022.10.22
--  Github    - https://github.com/vine91
--  Contact   - vine9151@gmail.com
/]]


-- Local variables to config Airline
local airline = vim.api.nvim_set_var


-- Configure Airline
airline('airline_theme', 'codedark')
airline('airline_powerline_fonts', 1)
airline('airline_highlighting_cache', 1)

airline('airline_left_sep', '')
airline('airline_left_alt_sep', '  ')
airline('airline_right_sep', '')
airline('airline_right_alt_sep', '  ')
airline('airline_section_y', ' %{strftime("%H:%M")} ')
airline('airline_section_z', ' %{line(".")} %{col(".")} ')
airline('airline_section_warning', '')

airline('airline#extensions#tabline#enabled', 1)
airline('airline#extensions#tabline#show_buffers', 1)
airline('airline#extensions#tabline#buffer_idx_mode', 1)

airline('airline#extensions#tabline#fnamemod', ':t')
airline('airline#extensions#tabline#left_sep', '')
airline('airline#extensions#tabline#left_alt_sep', '')
airline('airline#extensions#tabline#right_sep', '')
airline('airline#extensions#tabline#right_alt_sep', '')
