

						 -- Copyright © 2016 redskhie

			--NOTE: YOU NEED ITEM "Escape Rope" in order to heal your fainted Pokes when in the Hunting Area

huntandFarm = false		--set to true if you want to kill all encountered pokes else false
catchUncaught = true		--set to true if you want to catch uncaught pokes else false
catchShiny = true		--set to true if you want to catch encountered shiny's else false


						-- CATCH CONFIGURATION --CASE INSENSITIVE
			--SINGLE CATCHING

singleCatch = false		--Set to true if you want to catch only 1 Pokes and set multipleCatch to false
	
toHunt = "Feebas"		--Set/Change the name of Pokemon you want to Catch     
huntMap = "Wet"		--Set/Change the Map Area of the Pokemon    --OPTIONS: "GrassandSwamp", "Mountain", "Snow", "Wet"



			--MULTIPLE CATCHING

multipleCatch = true		--Set to true if you want to catch multiple Pokes at Different Time and set singleCatch to false

				--NOTE: PLEASE PROPERLY ARRANGE THE TEAM ACCORDING TO YOUR INPUT CONFIG before START SCRIPT


			--MORNING TIME CONFIG

toHunt1 = "Cyndaquil"		--Set/Change the name of Pokemon you want to Catch
huntMap1 = "Mountain"		--Set/Change the Map Area of the 1st Pokemon    --OPTIONS: "GrassandSwamp", "Mountain", "Snow", "Wet"



synch1 = "Timid"			--Set the Nature of the Synch Poke to Use at Morning
synchIndex1 = 1			--Do not touch this line!

			--DAY TIME CONFIG

toHunt2 = "Cyndaquill"			--Set/Change the name of Pokemon you want to Catch at Noon
huntMap2 = "Mountain"			--Set/Change the Map Area of the 2nd Pokemon    --OPTIONS: "GrassandSwamp", "Mountain", "Snow", "Wet"


synch2 = "Timid"		--Set the Nature of the Synch Poke to Use at Noon
synchIndex2 = 3			--set the Index # of the Synch Poke to Use at Noon, elseif the same leave
			--NIGHT TIME CONFIG

toHunt3 = "Totodile"			--Set/Change the name of Pokemon you want to Catch at Night
huntMap3 = "Wet"		--Set/Change the Map Area of the 3rdPokemon    --OPTIONS: "GrassandSwamp", "Mountain", "Snow", "Wet"


synch3 = "Adamant"		--Set the Nature of the Synch Poke to Use at Night		
synchIndex3 = 4 		--set the Index # of the Synch Poke to Use at Night, elseif the same leave




fishItem = "Super Rod"		--Set/Change the Name of the Fishing Item you want to Use, Don't leave it blank






	-- You can only choose One Special Catching, set true, else leave the 3 false

                                   --use only normalCatchOn if you don't have fswiper and sleeper
                                   --Leave blank at sleepmove/weakmove if you don't have atleast


normalCatchOn = false        --Directly throw pokeballs on hunted pokemons
fswipeOn = false        --Switch to pokemon with false swipe, use false swipe until the hunted pokes hp is reach to 1 then throw pokeballs
sleepOn = false            --Switch to pokemon with sleep move, use sleep move until the hunted pokes status is SLEEPING then throw pokeballs
advanceCatchOn = true        --Use fswipeOn and sleepOn to catch hunted pokes

falseswiper = 6            --Index of pokemon with false swipe
fswipeHP = 10            --Returns the health percent of the false swiper, then heal to PC
weakmove = "False Swipe"    --False Swipe move --Change to "None" If you don't have

sleeper = 6            --Index of pokemon with sleep move
sleeperHP = 10            --Returns the health percent of the false swiper, then heal to PC
sleepmove = "None"        --Set/Change the name of the sleep move --Change to "None" If you don't have



 			--MOUNTING CONFIGURATION


    -- Set/Change the name of the mount you want to use on LAND

mount = "Arcanine Mount"

    -- Set/Change to true if you want to use mount,else false

mountSwitch = true









		--WARNING!!! DO NOT TOUCH THE CODES BELOW!!!


					 -- Copyright © 2016 redskhie

	local GrassSwampList = {"Abra", "Chansey", "Chikorita", "Ducklett", "Gastly", "Girafarig", "Haunter", "Lickitung", "Mr Mime", "Murkrow", "Oddish", "Politoed", "Psyduck", "Seedot", "Skiploom", "Smeargle", "Sunkern", "Surskit", "Wooper"}
	local GrassSwampSurfList = {"Ducklett", "Horsea", "Krabby", "Magikarp" , "Marill", "Poliwag", "Poliwhirl"}
	local MountainList = {"Clefairy", "Cyndaquil", "Fearow", "Graveler", "Magmar", "Magnemite", "Magneton", "Mankey", "Onix", "Slugma", "Wobbuffet", "Zubat"}
	local SnowList = {"Delibird", "Jynx", "Seel", "Sneasel", "Snorunt", "Swinub"}
	local SnowSurfList = {"Dewgong", "Horsea", "Lapras", "Psyduck", "Seadra", "Seel", "Spheal"}
	local SnowFishList = {"Shellder"}
	local WetList = {"Tympole", "Poliwag", "Slowpoke", "Wingull", "Wooper"}
	local WetSurfList = {"Goldeen", "Horsea", "Totodile"}
	local WetFishList = {"Chinchou", "Corphish", "Feebas", "Magikarp", "Remoraid", "Staryu"}
		
					 -- Copyright © 2016 redskhie


name = "All in One Catcher at Johto Safari"
author = "redskhie"
description = [[This script will catch your desired Pokemons at Johto Safari]]



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
  

function pc()
	if getMapName() == "Safari Johto Wet Zone" or getMapName() == "Johto Safari Entrance" or getMapName() == "Safari Johto Grass and Swamp Zone" or getMapName() == "Safari Johto Snow Zone" or getMapName() == "Safari Johto Mountain Zone" then
		useItem("Escape Rope")
        elseif getMapName() == "Johto Safari Zone Lobby" then
            moveToMap("Route 48")
        elseif getMapName() == "Route 48" then
            moveToMap("Pokecenter Route 48")
        elseif getMapName() == "Pokecenter Route 48" then
            usePokecenter()
        end
    	
end

function GsMap()

	if getMapName() == "Pokecenter Route 48" then
        	moveToMap("Route 48")
        elseif getMapName() == "Route 48" then
        	moveToMap("Johto Safari Zone Lobby")
	elseif getMapName() == "Johto Safari Zone Lobby" then
        	talkToNpcOnCell(21,6)
	elseif getMapName() == "Safari Johto Wet Zone" or getMapName() == "Safari Johto Snow Zone" or getMapName() == "Safari Johto Mountain Zone" then
		moveToMap("Johto Safari Entrance")
	elseif getMapName() == "Johto Safari Entrance" then
		moveToMap("Safari Johto Grass and Swamp Zone")
	elseif getMapName() == "Safari Johto Grass and Swamp Zone" then
		
		GSList()

	end

end

function MtMap()
	if getMapName() == "Pokecenter Route 48" then
        	moveToMap("Route 48")
        elseif getMapName() == "Route 48" then
        	moveToMap("Johto Safari Zone Lobby")
	elseif getMapName() == "Johto Safari Zone Lobby" then
        	talkToNpcOnCell(21,6)
	elseif getMapName() == "Safari Johto Wet Zone" or getMapName() == "Safari Johto Snow Zone" or getMapName() == "Safari Johto Grass and Swamp Zone" then
		moveToMap("Johto Safari Entrance")
	elseif getMapName() == "Johto Safari Entrance" then
		moveToMap("Safari Johto Mountain Zone")
	elseif getMapName() == "Safari Johto Mountain Zone" then
		
		moveToGrass()
		
	end
end
function SnMap()
	if getMapName() == "Pokecenter Route 48" then
        	moveToMap("Route 48")
        elseif getMapName() == "Route 48" then
        	moveToMap("Johto Safari Zone Lobby")
	elseif getMapName() == "Johto Safari Zone Lobby" then
        	talkToNpcOnCell(21,6)
	elseif getMapName() == "Safari Johto Wet Zone" or getMapName() == "Safari Johto Grass and Swamp Zone" or getMapName() == "Safari Johto Mountain Zone" then
		moveToMap("Johto Safari Entrance")
	elseif getMapName() == "Johto Safari Entrance" then
		moveToMap("Safari Johto Snow Zone")
	elseif getMapName() == "Safari Johto Snow Zone" then
		SList()
	end
end
function WetMap()
	if getMapName() == "Pokecenter Route 48" then
        	moveToMap("Route 48")
        elseif getMapName() == "Route 48" then
        	moveToMap("Johto Safari Zone Lobby")
	elseif getMapName() == "Johto Safari Zone Lobby" then
        	talkToNpcOnCell(21,6)
	elseif getMapName() == "Safari Johto Grass and Swamp Zone" or getMapName() == "Safari Johto Mountain Zone" or getMapName() == "Safari Johto Snow Zone" then
		moveToMap("Johto Safari Entrance")
	elseif getMapName() == "Johto Safari Entrance" then
		moveToMap("Safari Johto Wet Zone")
	elseif getMapName() == "Safari Johto Wet Zone" then
		
		WList()
	end
end


function natureSwap()
    
    if synch1 ~= synch2 and synch2 ~= synch3 then
    
    if isMorning() and getPokemonNature(synchIndex1) == synch3 and getPokemonNature(synchIndex2) == synch1 and getPokemonNature(synchIndex3) == synch2 then
        return swapPokemon(synchIndex1, synchIndex2)
    elseif isMorning() and getPokemonNature(synchIndex1) == synch3 and getPokemonNature(synchIndex2) == synch2 and getPokemonNature(synchIndex3) == synch1 then
        return swapPokemon(synchIndex1, synchIndex3)
    elseif isMorning() and getPokemonNature(synchIndex1) == synch1 then

        if huntMap1 == "GrassandSwamp" then
            GsMap()
        elseif huntMap1 == "Mountain" then
            MtMap()
        elseif huntMap1 == "Snow" then
            SnMap()
        elseif huntMap1 == "Wet" then
            WetMap()
        end

    end

    if isNoon() and getPokemonNature(synchIndex1) == synch1 and getPokemonNature(synchIndex2) == synch2 and getPokemonNature(synchIndex3) == synch3 then
        return swapPokemon(synchIndex1, synchIndex2)
    elseif isNoon() and getPokemonNature(synchIndex1) == synch1 and getPokemonNature(synchIndex2) == synch3 and getPokemonNature(synchIndex3) == synch2 then
        return swapPokemon(synchIndex1, synchIndex3)
    elseif isNoon() and getPokemonNature(synchIndex1) == synch2 then

        if huntMap2 == "GrassandSwamp" then
            GsMap()
        elseif huntMap2 == "Mountain" then
            MtMap()
        elseif huntMap2 == "Snow" then
            SnMap()
        elseif huntMap2 == "Wet" then
            WetMap()
        end
    end
    
    if isNight() and getPokemonNature(synchIndex1) == synch2 and getPokemonNature(synchIndex2) == synch3 and getPokemonNature(synchIndex3) == synch1 then
        return swapPokemon(synchIndex1, synchIndex2)
    elseif isNight() and getPokemonNature(synchIndex1) == synch2 and getPokemonNature(synchIndex2) == synch1 and getPokemonNature(synchIndex3) == synch3 then
        return swapPokemon(synchIndex1, synchIndex3)
    elseif isNight() and getPokemonNature(synchIndex1) == synch3 then

        if huntMap3 == "GrassandSwamp" then
            GsMap()
        elseif huntMap3 == "Mountain" then
            MtMap()
        elseif huntMap3 == "Snow" then
            SnMap()
        elseif huntMap3 == "Wet" then
            WetMap()
        end
    end
    
    elseif synch1 == synch2 and synch2 ~= synch3 then
    
    if isMorning() and getPokemonNature(1) ~= synch1 then
        return swapPokemon(synchIndex1, synchIndex3)
    elseif isMorning() and getPokemonNature(1) == synch1 then
        if huntMap1 == "GrassandSwamp" then
            GsMap()
        elseif huntMap1 == "Mountain" then
            MtMap()
        elseif huntMap1 == "Snow" then
            SnMap()
        elseif huntMap1 == "Wet" then
            WetMap()
        end
    end
    if isNoon() and getPokemonNature(1) ~= synch2 then
        return swapPokemon(synchIndex2, synchIndex3)
    elseif isNoon() and getPokemonNature(1) == synch2 then
        if huntMap2 == "GrassandSwamp" then
            GsMap()
        elseif huntMap2 == "Mountain" then
            MtMap()
        elseif huntMap2 == "Snow" then
            SnMap()
        elseif huntMap2 == "Wet" then
            WetMap()
        end
    end
    if isNight() and getPokemonNature(1) ~= synch3 then
        return swapPokemon(synchIndex2, synchIndex3)
    elseif isNight() and getPokemonNature(1) == synch3 then
        if huntMap3 == "GrassandSwamp" then
            GsMap()
        elseif huntMap3 == "Mountain" then
            MtMap()
        elseif huntMap3 == "Snow" then
            SnMap()
        elseif huntMap3 == "Wet" then
            WetMap()
        end
    end
    
    elseif synch1 == synch3 and synch2 ~= synch3 then
    
    if isMorning() and getPokemonNature(1) ~= synch1 then
        return swapPokemon(synchIndex1, synchIndex2)
    elseif isMorning() and getPokemonNature(1) == synch1 then
        if huntMap1 == "GrassandSwamp" then
            GsMap()
        elseif huntMap1 == "Mountain" then
            MtMap()
        elseif huntMap1 == "Snow" then
            SnMap()
        elseif huntMap1 == "Wet" then
            WetMap()
        end
    end
    if isNoon() and getPokemonNature(1) ~= synch2 then
        return swapPokemon(synchIndex2, synchIndex1)
    elseif isNoon() and getPokemonNature(1) == synch2 then
        if huntMap2 == "GrassandSwamp" then
            GsMap()
        elseif huntMap2 == "Mountain" then
            MtMap()
        elseif huntMap2 == "Snow" then
            SnMap()
        elseif huntMap2 == "Wet" then
            WetMap()
        end
    end
    if isNight() and getPokemonNature(1) ~= synch3 then
        return swapPokemon(synchIndex2, synchIndex3)
    elseif isNight() and getPokemonNature(1) == synch3 then
        if huntMap3 == "GrassandSwamp" then
            GsMap()
        elseif huntMap3 == "Mountain" then
            MtMap()
        elseif huntMap3 == "Snow" then
            SnMap()
        elseif huntMap3 == "Wet" then
            WetMap()
        end
    end
    
    elseif synch1 == synch3 and synch2 == synch3 then
    
    if isMorning() and getPokemonNature(1) == synch1 then
        if huntMap1 == "GrassandSwamp" then
            GsMap()
        elseif huntMap1 == "Mountain" then
            MtMap()
        elseif huntMap1 == "Snow" then
            SnMap()
        elseif huntMap1 == "Wet" then
            WetMap()
        end
    end
    if isNoon() and getPokemonNature(1) == synch2 then
        if huntMap2 == "GrassandSwamp" then
            GsMap()
        elseif huntMap2 == "Mountain" then
            MtMap()
        elseif huntMap2 == "Snow" then
            SnMap()
        elseif huntMap2 == "Wet" then
            WetMap()
        end
    end
    if isNight() and getPokemonNature(1) == synch3 then
        if huntMap3 == "GrassandSwamp" then
            GsMap()
        elseif huntMap3 == "Mountain" then
            MtMap()
        elseif huntMap3 == "Snow" then
            SnMap()
        elseif huntMap3 == "Wet" then
            WetMap()
        end
    end
    
    end
    
end
function sleepPP()
	if sleepmove ~= "None" then 
		return getRemainingPowerPoints(sleeper, sleepmove) >= 1 
	elseif sleepmove == "None" then
		isPokemonUsable(sleeper)
	end
end
function fswipePP()
	if weakmove ~= "None" then 
		return getRemainingPowerPoints(falseswiper, weakmove) >= 1 
	elseif weakmove == "None" then
		isPokemonUsable(falseswiper)
	end
end


function onPathAction()
	if not isMounted() and mountSwitch == true and hasItem(mount) and not isSurfing() and isOutside() then
        log("---------------------------")
        log("~~~ Riding on my pet!!! ~~~")
        log("---------------------------")
                return useItem(mount)

	elseif sleepPP() and fswipePP() and isPokemonUsable(1) and isPokemonUsable(synchIndex2) and isPokemonUsable(synchIndex3) and isPokemonUsable(falseswiper) and getPokemonHealthPercent(falseswiper) > fswipeHP and getPokemonHealthPercent(sleeper) > sleeperHP and isPokemonUsable(sleeper) then
    
		if singleCatch then
			if huntMap == "GrassandSwamp" then
				GsMap()
			elseif huntMap == "Mountain" then
				MtMap()
			elseif huntMap == "Snow" then
				SnMap()
			elseif huntMap == "Wet" then
				WetMap()
			end
		elseif multipleCatch then
			natureSwap()
		end
	else
		pc()
	end

end

function onBattleAction()

	if isWildBattle() and ((catchShiny and isOpponentShiny()) or (catchUncaught and not isAlreadyCaught())) then
		if fswipeOn then
           	log("-------- Commencing False Swipe --------")
            		fswipe()
        	elseif sleepOn then
            	log("-------- Commencing Sleep Move --------")
            		sleep()
        	elseif advanceCatchOn then
            	log("-------- Commencing False Swipe with Sleep Move --------")
            		advanceCatch()
        	elseif normalCatchOn then
            	log("-------- Starting to throw Pokeballs --------")
            		normal()  
		end 
	elseif singleCatch and getOpponentName() == toHunt then
		if fswipeOn then
           	log("-------- Commencing False Swipe --------")
            		fswipe()
        	elseif sleepOn then
            	log("-------- Commencing Sleep Move --------")
            		sleep()
        	elseif advanceCatchOn then
            	log("-------- Commencing False Swipe with Sleep Move --------")
            		advanceCatch()
        	elseif normalCatchOn then
            	log("-------- Starting to throw Pokeballs --------")
            		normal()  
		end 
	elseif multipleCatch and (getOpponentName() == toHunt1 or getOpponentName() == toHunt2 or getOpponentName() == toHunt3) then
		if fswipeOn then
           	log("-------- Commencing False Swipe --------")
            		fswipe()
        	elseif sleepOn then
            	log("-------- Commencing Sleep Move --------")
            		sleep()
        	elseif advanceCatchOn then
            	log("-------- Commencing False Swipe with Sleep Move --------")
            		advanceCatch()
        	elseif normalCatchOn then
            	log("-------- Starting to throw Pokeballs --------")
            		normal()  
		end 
	elseif huntandFarm then
            return attack() or sendAnyPokemon() or run() or sendUsablePokemon()  
	else
            return run() or sendUsablePokemon() or attack() or sendAnyPokemon()
        end
	
end

function normal()
    return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendAnyPokemon() or attack() or run()
end

function advanceCatch()
        if getActivePokemonNumber() == 1 then
            return sendPokemon(falseswiper) or useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or sendAnyPokemon() or run()
        elseif ( getActivePokemonNumber() == falseswiper ) and ( getOpponentHealth() > 1 ) then
            return weakAttack() or useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or sendAnyPokemon() or run()
        elseif ( getActivePokemonNumber() == sleeper ) and ( getOpponentStatus() ~= "SLEEP" and getOpponentStatus() ~= "PARALIZE" and getOpponentStatus() ~= "POISON" and getOpponentStatus() ~= "BURN" ) and ( getOpponentHealth() == 1 ) then
            return useMove(sleepmove) or useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or sendAnyPokemon() or run()
        elseif ( getActivePokemonNumber() == falseswiper ) and ( getOpponentHealth() == 1 ) then
            return sendPokemon(sleeper) or useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or sendAnyPokemon() or run()
        elseif getOpponentStatus() == "SLEEP" or getOpponentStatus() == "PARALIZE" or getOpponentStatus() == "POISON" or getOpponentStatus() == "BURN" then
            return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or sendAnyPokemon() or attack() or run()
        else
                return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or sendAnyPokemon() or attack() or run()
        end
end

function fswipe()
        if getActivePokemonNumber() == 1 then
            return sendPokemon(falseswiper) or useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or sendAnyPokemon() or run()
        elseif ( getActivePokemonNumber() == falseswiper ) and ( getOpponentHealth() > 1 ) then
            return weakAttack() or useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or sendAnyPokemon() or run()
        elseif getOpponentHealth() == 1 then
            return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendAnyPokemon() or attack() or run()
        end
end
function sleep()
        if getActivePokemonNumber() == 1 then
            return sendPokemon(sleeper) or useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or run()
        elseif ( getActivePokemonNumber() == sleeper ) and ( getOpponentStatus() ~= "SLEEP" and getOpponentStatus() ~= "PARALIZE" and getOpponentStatus() ~= "POISON" and getOpponentStatus() ~= "BURN" ) then
            return useMove(sleepmove) or useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or sendAnyPokemon() or run()
        elseif getOpponentStatus() == "SLEEP" or getOpponentStatus() == "PARALIZE" or getOpponentStatus() == "POISON" or getOpponentStatus() == "BURN" then
            return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or sendAnyPokemon() or run()
        else
            return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or sendAnyPokemon() or attack() or run()
        end    
end


	
function onStart()

	startime = os.time()
    	shinyCounter = 0
	pokecenterCounter = 0
    	wildCounter = 0	
	pokeballCounter = 0
	startMoney = getMoney()
	poke1 = 0
	poke2 = 0
	poke3 = 0
	poke = 0
	log("-----------------------------------------------------------")
        log("|---- We are now Commencing the Catch Routine ----|")
        log("-----------------------------------------------------------")
	if multipleCatch then
		log("-------- MULTI-CATCHING STARTED --------")
        	log("-------- Script Information --------")
		log("~HUNTED POKEMONS~")
		log("-Morning Time: "..toHunt1.."- -Location: Safari Johto "..huntMap1.." Zone-")
		log("-Day Time: "..toHunt2.."- -Location: Safari Johto "..huntMap2.." Zone-")
		log("-Night Time: "..toHunt3.."- -Location: Safari Johto "..huntMap3.." Zone-")
        	log("--------------------------------------")
	elseif singleCatch then
		log("-------- SINGLE-CATCHING STARTED --------")
       		log("-------- Script Information --------")
		log("-We will hunt "..toHunt.." all Day!!!- -Location: Safari Johto "..huntMap.." Zone-")
        	log("--------------------------------------")
	end

end
function onDialogMessage(pokecenter)
    if stringContains(pokecenter, "Would you like me to heal your Pokemon?") then
        pokecenterCounter = pokecenterCounter + 1
    end
end
function onBattleMessage(wild)
    
    if stringContains(wild, "A Wild SHINY ") then
        shinyCounter = shinyCounter + 1    
    
    elseif stringContains(wild, "You throw") then
        pokeballCounter = pokeballCounter + 1    
    
   
    elseif wild == "A Wild [FF9900]"..toHunt.."[-] Attacks!" then
        poke = poke + 1
  
    elseif wild == "A Wild [FF9900]"..toHunt1.."[-] Attacks!" then
        poke1 = poke1 + 1
	
    elseif wild == "A Wild [FF9900]"..toHunt2.."[-] Attacks!" then
        poke2 = poke2 + 1

    elseif wild == "A Wild [FF9900]"..toHunt3.."[-] Attacks!" then
        poke3 = poke3 + 1

    elseif stringContains(wild, "A Wild ") then
            wildCounter = wildCounter + 1
    end
      
end
	

	
function onPause()
    
    	log(" --------------------------------------------")
        log("|--------- CATCH ROUTINE PAUSED ----------|")
        log(" --------------------------------------------")
	log("|--------- Move Remaining Power Points ----------|")
    	log("--------------------------------------")
    	log("False Swipe: " .. tostring(getRemainingPowerPoints(falseswiper,weakmove)))
    	log("Sleep Move: " .. tostring(getRemainingPowerPoints(sleeper,sleepmove)))
    	log("-----------------------------------------------------------")
    	
    	log(" ")
	if multipleCatch then
		log("-------- MULTI-CATCHING Status --------")
        	log(" ")
		log("~HUNTED POKEMONS~")
		log("- "..toHunt1..": "..poke1)
		log("- "..toHunt2..": "..poke2)
		log("- "..toHunt3..": "..poke3)
        	log("--------------------------------------")
	elseif singleCatch then
		log("-------- SINGLE-CATCHING Status --------")
       		log(" ")
		log("- "..toHunt..": "..poke)
        	log("--------------------------------------")
	end
	
	log(" --------------------------------------------")
    	log("Pokeball's used: " .. pokeballCounter)
    	log("-----------------------------------------------------------")
    	log("Shinies Caught: " .. shinyCounter)
	log("Pokemons encountered: " .. wildCounter)
    	log("---------------------------------------------")
	log("Times in Pokecenter: " .. pokecenterCounter)
	if huntandFarm then
		log("Pokedollars earned: "..tostring(getMoney() - startMoney))
	end
	log("---------------------------------------------")
end

function onStop()
    log("-----------------------------------------------------------")
        log("---------------------- Routine Stopped ---------------------")
        log("-----------------------------------------------------------")
    endtime = os.time()
        log(string.format("Bot running time: %.2f", os.difftime(endtime,startime)/3600 ).. " hours")
        log("or")
        log(string.format("Bot running time: %.2f", os.difftime(endtime,startime)/60 ).. " minutes")
        log("-----------------------------------------------------------")
end
