Multiworld = require "Multiworld"
SaveData = require "SaveData"

RegisterConsoleCommandHandler("connect", function (Cmd, CommandParts, Ar)
    if Multiworld:IsConnected() then
        print("Already connected.\n")
    elseif #CommandParts == 2 then
        ExecuteAsync(function ()
            Multiworld:Connect(CommandParts[1], CommandParts[2], "")
        end)
    elseif #CommandParts == 3 then
        ExecuteAsync(function ()
            Multiworld:Connect(CommandParts[1], CommandParts[2], CommandParts[3])
        end)
    else
        if SaveData:FileExists() then
            ExecuteAsync(function ()
                Multiworld:Connect(SaveData.Address, SaveData.Slot, SaveData.Password)
            end)
        else
            print("Connect command should have either 2 or 3 arguments. (connect [address:host] [player] [password]?)\n")
        end
    end
    return true
end)

RegisterConsoleCommandHandler("disconnect", function (Cmd, CommandParts, Ar)
    if Multiworld:IsConnected() then
        Multiworld:Disconnect()
    else
        print("Not connected.\n")
    end
    return true
end)