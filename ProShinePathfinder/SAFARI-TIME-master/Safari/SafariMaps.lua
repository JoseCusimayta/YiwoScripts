
local PathFinder = require "Pathfinder/MoveToApp"
local map = nil

--KANTO REGION

function AreaOne()
	map = getMapName()
	if map == "Safari Area 1" then
		moveToGrass()
	else
		PathFinder.moveTo(map, "Safari Area 1")
	end
end

function AreaTwo()
	map = getMapName()
	if map == "Safari Area 2" then
		moveToGrass()
	else
		PathFinder.moveTo(map, "Safari Area 2")
	end
end

function AreaThree()
	map = getMapName()
	if map == "Safari Area 3" then
		moveToGrass()
	else
		PathFinder.moveTo(map, "Safari Area 3")
	end
end

function Exclusive()
	map = getMapName()
	if map == "Safari Exclusive" then
		moveToGrass()
	else
		PathFinder.moveTo(map, "Safari Exclusive")
	end
end



--JOHTO REGION


--Grass and Swamp Exception

function GSList()

for _,GrassSwampList in pairs(GrassSwampList) do
  if (singleCatch and GrassSwampList == toHunt) or (multipleCatch and isMorning() and GrassSwampList == toHunt1) or (multipleCatch and isNoon() and GrassSwampList == toHunt2) or (multipleCatch and isNight() and GrassSwampList == toHunt3) then
    	moveToGrass()
    break
  end
end

for _,GrassSwampSurfList in pairs(GrassSwampSurfList) do
  if (singleCatch and GrassSwampSurfList == toHunt) or (multipleCatch and isMorning() and GrassSwampSurfList == toHunt1) or (multipleCatch and isNoon() and GrassSwampSurfList == toHunt2) or (multipleCatch and isNight() and GrassSwampSurfList == toHunt3) then
    	moveToWater()
    break
  end
end

end

--Wet Exception

function WList()

for _,WetList in pairs(WetList) do
  if (singleCatch and WetList == toHunt) or (multipleCatch and isMorning() and WetList == toHunt1) or (multipleCatch and isNoon() and WetList == toHunt2) or (multipleCatch and isNight() and WetList == toHunt3) then
    	moveToGrass()
    break
  end
end

for _,WetSurfList in pairs(WetSurfList) do
  if (singleCatch and WetSurfList == toHunt) or (multipleCatch and isMorning() and WetSurfList == toHunt1) or (multipleCatch and isNoon() and WetSurfList == toHunt2) or (multipleCatch and isNight() and WetSurfList == toHunt3) then
    	moveToWater()
    break
  end
end

for _,WetFishList in pairs(WetFishList) do
  if (singleCatch and WetFishList == toHunt) or (multipleCatch and isMorning() and WetFishList == toHunt1) or (multipleCatch and isNoon() and WetFishList == toHunt2) or (multipleCatch and isNight() and WetFishList == toHunt3) then
    	if getPlayerX() == 23 and getPlayerY() == 11 then
		useItem(fishItem)
	else
		moveToCell(23,11)
	end
    break
  end
end

end

--Snow Exception

function SList()

for _,SnowList in pairs(SnowList) do
  if (singleCatch and SnowList == toHunt) or (multipleCatch and isMorning() and SnowList == toHunt1) or (multipleCatch and isNoon() and SnowList == toHunt2) or (multipleCatch and isNight() and SnowList == toHunt3) then
    	moveToGrass()
    break
  end
end

for _,SnowSurfList in pairs(SnowSurfList) do
   if (singleCatch and SnowSurfList == toHunt) or (multipleCatch and isMorning() and SnowSurfList == toHunt1) or (multipleCatch and isNoon() and SnowSurfList == toHunt2) or (multipleCatch and isNight() and SnowSurfList == toHunt3) then
    	moveToWater()
    break
  end
end

for _,SnowFishList in pairs(SnowFishList) do
   if (singleCatch and SnowFishList == toHunt) or (multipleCatch and isMorning() and SnowFishList == toHunt1) or (multipleCatch and isNoon() and SnowFishList == toHunt2) or (multipleCatch and isNight() and SnowFishList == toHunt3) then
    	if getPlayerX() == 26 and getPlayerY() == 17 then
		useItem(fishItem)
	else
		moveToCell(26,17)
	end
    break
  end
end

end

--Other Zone

function GsMap()
	map = getMapName()
	if map == "Safari Johto Grass and Swamp Zone" then
		GSList()
	else
		PathFinder.moveTo(map, "Safari Johto Grass and Swamp Zone")
	end
end
function MtMap()
	map = getMapName()
	if map == "Safari Johto Mountain Zone" then
		moveToGrass()
	else
		PathFinder.moveTo(map, "Safari Johto Mountain Zone")
	end
end
function SnMap()
	map = getMapName()
	if map == "Safari Johto Snow Zone" then
		SList()
	else
		PathFinder.moveTo(map, "Safari Johto Snow Zone")
	end
end
function WetMap()
	map = getMapName()
	if map == "Safari Johto Wet Zone" then
		WList()
	else
		PathFinder.moveTo(map, "Safari Johto Wet Zone")
	end
end


--HOENN REGION

--Zone 5 Exception

function List5()

for _,ZoneFiveList in pairs(ZoneFiveList) do
  if (singleCatch and ZoneFiveList == toHunt) or (multipleCatch and isMorning() and ZoneFiveList == toHunt1) or (multipleCatch and isNoon() and ZoneFiveList == toHunt2) or (multipleCatch and isNight() and ZoneFiveList == toHunt3) then
    	moveToGrass()
    break
  end
end

for _,ZoneFiveSurfList in pairs(ZoneFiveSurfList) do
  if (singleCatch and ZoneFiveSurfList == toHunt) or (multipleCatch and isMorning() and ZoneFiveSurfList == toHunt1) or (multipleCatch and isNoon() and ZoneFiveSurfList == toHunt2) or (multipleCatch and isNight() and ZoneFiveSurfList == toHunt3) then
    	moveToWater()
    break
  end
end

end

--Other Zone

function Zone1()
	map = getMapName()
	if map == "Hoenn Safari Zone Area 1" then
		moveToGrass()
	else
		PathFinder.moveTo(map, "Hoenn Safari Zone Area 1")
	end
end

function Zone2()
	map = getMapName()
	if map == "Hoenn Safari Zone Area 2" then
		moveToGrass()
	else
		PathFinder.moveTo(map, "Hoenn Safari Zone Area 2")
	end
end

function Zone3()
	map = getMapName()
	if map == "Hoenn Safari Zone Area 3" then
		moveToGrass()
	else
		PathFinder.moveTo(map, "Hoenn Safari Zone Area 3")
	end
end
function Zone4()
	map = getMapName()
	if map == "Hoenn Safari Zone Area 4" then
		moveToGrass()
	else
		PathFinder.moveTo(map, "Hoenn Safari Zone Area 4")
	end
end

function Zone5()
	map = getMapName()
	if map == "Hoenn Safari Zone Area 1" then
		List5()
	else
		PathFinder.moveTo(map, "Hoenn Safari Zone Area 1")
	end
end

function Zone6()
	map = getMapName()
	if map == "Hoenn Safari Zone Area 6" then
		moveToGrass()
	else
		PathFinder.moveTo(map, "Hoenn Safari Zone Area 6")
	end
end




--HEAL AT POKECENTER

function HealPoke()
	map = getMapName()
	PathFinder.useNearestPokecenter(map)
end
