

local KantoReg = {"Area 1", "Area 2", "Area 3", "Exclusive"}
local HoennReg = {"Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5", "Zone 6"}
local JohtoReg = {"GrassandSwamp", "Mountain", "Snow", "Wet"}

function SafariLog()
	for _,KantoReg in pairs(KantoReg) do
	if (huntMap or huntMap1 or huntMap2 or huntMap3) == KantoReg then
		log("Kanto Safari")
	end
		break
	end
	for _,HoennReg in pairs(HoennReg) do
	if (huntMap or huntMap1 or huntMap2 or huntMap3) == HoennReg then
		log("Hoenn Safari")
	end
		break
	end
	for _,JohtoReg in pairs(JohtoReg) do
	if (huntMap or huntMap1 or huntMap2 or huntMap3) == JohtoReg then
		log("Johto Safari")
	end
		break
	end
end