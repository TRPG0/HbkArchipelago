InfoCache = {}

InfoCache.Player = {
    JoinedPartnerFlags = 0
}

function InfoCache.RefreshPlayer()
    local Valid, PlayerCharacterManager = ObjectCache.FindPlayerCharacterManager()
    if Valid then
        InfoCache.Player.JoinedPartnerFlags = PlayerCharacterManager.PlayerStateInfo.JoinedPartnerFlags
    end
end

---@return boolean
function InfoCache.HasPartner808()
    return InfoCache.Player.JoinedPartnerFlags & 1 > 0
end

---@return boolean
function InfoCache.HasPartnerPeppermint()
    return InfoCache.Player.JoinedPartnerFlags & 2 > 0
end

---@return boolean
function InfoCache.HasPartnerMacaron()
    return InfoCache.Player.JoinedPartnerFlags & 4 > 0
end

---@return boolean
function InfoCache.HasPartnerKorsica()
    return InfoCache.Player.JoinedPartnerFlags & 8 > 0
end

---@return boolean
function InfoCache.HasPartnerCNMN()
    return InfoCache.Player.JoinedPartnerFlags & 16 > 0
end

return InfoCache