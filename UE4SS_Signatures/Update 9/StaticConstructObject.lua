--Depot 1817231
--Manifest 2352550391294550783

function Register()
	return "48 89 5C 24 10 48 89 6C 24 18 48 89 74 24 20 57 41 56 41 57 48 81 EC A0 01 00 00 48 8B ?? ?? ?? ?? ?? 48 33 C4 48 89"
end

function OnMatchFound(MatchAddress)
	return MatchAddress
end