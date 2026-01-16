function Register()
	return "48 89 5C 24 10 48 89 6C 24 18 56 57 41 54 41 56 41 57 48 83 EC 40 45 33 E4 48 8B F1 48 8B 0D ?? ?? ?? ?? 41 8B DC 89 5C 24 70 4C 8B F2 48 85 C9 75 0C E8 ?? ?? ?? ?? 48 8B 0D"
end

function OnMatchFound(MatchAddress)
	local MovInstrSize = 0x07
	local MovInstr     = MatchAddress + 0x1C
	local Offset       = DerefToInt32(MovInstr + 0x03)
	local Destination  = MovInstr + MovInstrSize + Offset

	return Destination
end

-- function Register()
-- 	return "48 89 5C 24 08 57 48 83 EC 30 48 8B D9 48 89 54 24 20 33 C9 41 8B F8 4C 8B DA 44 8B D1 4C 8B CA 48 85 D2 74 1E 0F B7 02 66 85 C0 74 16 0F 1F 00 49 83 C1 02 0F B7 C0 44 0B D0 41 0F B7 01 66 85 C0 75 ED 41 F7 C2 80 FF FF FF 0F 95 44 24 2C 4D 2B CB 49 D1 F9 44 89 4C 24 28 0F 28 44 24 20 66 0F 7F 44 24 20 45 85 C9 75 11 48 89 0B 48 8B C3 48 8B 5C 24 40 48 83 C4 30 5F C3 48 8D 54 24 28 49 8B CB E8 ?? ?? ?? ?? 0F 28 44 24 20 48 8D 54 24 20 44 8B C8 66 0F 7F 44 24 20 44 8B C7 48 8B CB E8 ?? ?? ?? ?? 48 8B C3 48 8B 5C 24 40 48 83 C4 30 5F C3"
-- end

-- function OnMatchFound(MatchAddress)
-- 	return 0x1472BF210
-- end