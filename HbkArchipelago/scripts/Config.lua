local Config = {}

Config.GameName = "Hi-Fi RUSH"
Config.ItemsHandling = 7
Config.ConnectTags = {"Lua-APClientPP"}
Config.MessageFormat = require("lua-apclientpp").RenderFormat.TEXT
Config.APTargetVersion = {0, 6, 6}
Config.APTargetVersionString = tostring(Config.APTargetVersion[1]) .. "." .. tostring(Config.APTargetVersion[2]) .. "." .. tostring(Config.APTargetVersion[3])

return Config