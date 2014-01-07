--Script made by Zadax

print "Loading Gm Login/Logout Script"

local Classes = {
        [1] = "C79C6E", 
        [2] = "F58CBA",
        [3] = "ABD473",
        [4] = "FFF569",
        [5] = "FFFFFF",
        [6] = "C41F3B",
        [7] = "0070DE",
        [8] = "69CCF0",
        [9] = "9482C9",
        [11] = "FF7d0A"
};

local Rank = { -- Add more ranks if you need to
                [0] = "|cFFE700B1玩家|r",
                [1] = "|cFFE700B1玩家|r",
		[2] = "|cFFE700B1Moderator|r",
		[3] = "|cFFE7A200Administrator|r",
		[4] = "|cFFDC143COwner|r"
};

local function GMLogin (event, player)
print "A staff member has logged in"
	if player:GetGMRank() >=2 then
		SendWorldMessage("有特别玩家進入了魔獸世界: |cFF"..Classes[player:GetClass()]..""..player:GetName().."|r. GM等級: "..Rank[player:GetGMRank()].."")
	else
	end
end

local function GMLogout (event, player)
print "A staff member has logged out"
	if player:GetGMRank() >2 then
		SendWorldMessage("|cFF"..Classes[player:GetClass()]..""..player:GetName().."|r ("..Rank[player:GetGMRank()]..") 已退出遊戲.")
	else
	end
end

RegisterServerHook(3, GMLogin)
RegisterServerHook(4, GMLogout)
