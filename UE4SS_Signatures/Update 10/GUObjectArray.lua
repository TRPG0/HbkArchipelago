function Register()
	return "45 84 C0 48 C7 41 10 00 00 00 00 B8 FF FF FF FF 4C 8D 1D"
end

function OnMatchFound(MatchAddress)
	local JmpInstrSize = 0x07
	local JmpInstr     = MatchAddress + 0x10
	local Offset       = DerefToInt32(JmpInstr + 0x03)
	local Destination  = JmpInstr + JmpInstrSize + Offset

	return Destination
end

-- function Register()
-- 	return "48 89 5C 24 08 57 48 83 EC 30 48 8B D9 48 89 54 24 20 33 C9 41 8B F8 4C 8B DA 44 8B D1 4C 8B CA 48 85 D2 74 1E 0F B7 02 66 85 C0 74 16 0F 1F 00 49 83 C1 02 0F B7 C0 44 0B D0 41 0F B7 01 66 85 C0 75 ED 41 F7 C2 80 FF FF FF 0F 95 44 24 2C 4D 2B CB 49 D1 F9 44 89 4C 24 28 0F 28 44 24 20 66 0F 7F 44 24 20 45 85 C9 75 11 48 89 0B 48 8B C3 48 8B 5C 24 40 48 83 C4 30 5F C3 48 8D 54 24 28 49 8B CB E8 ?? ?? ?? ?? 0F 28 44 24 20 48 8D 54 24 20 44 8B C8 66 0F 7F 44 24 20 44 8B C7 48 8B CB E8 ?? ?? ?? ?? 48 8B C3 48 8B 5C 24 40 48 83 C4 30 5F C3"
-- end

-- function OnMatchFound(MatchAddress)
-- 	return 0x1470179E0
-- end