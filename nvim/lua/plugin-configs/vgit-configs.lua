--[[
--  NOTE      - vgit-configs.lua
--  Author    - Eira Chae
--
--  Created   - 2022.11.04
--  Github    - https://github.com/vine91
--  Contact   - vine9151@gmail.com
/]]



-- Check error
local status_ok, vgit = pcall(require, "vgit")
if not status_ok then
    return
end


-- Empty setup using defaults
vgit.setup()



-- =========================== --
--    Additional User setup    --
-- =========================== --

-- Additional configs
