local Config = {}

Config.GameName = "Hi-Fi RUSH"
Config.ItemsHandling = 7
Config.ConnectTags = {"Lua-APClientPP"}
Config.MessageFormat = require("lua-apclientpp").RenderFormat.TEXT
Config.APTargetVersion = {0, 6, 4}
Config.APTargetVersionString = "0.6.4"

return Config