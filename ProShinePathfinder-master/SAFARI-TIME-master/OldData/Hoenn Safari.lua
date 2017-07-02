

						 -- Copyright © 2016 redskhie



huntandFarm = false		--set to true if you want to kill all encountered pokes else false
catchUncaught = false		--set to true if you want to catch uncaught pokes else false
catchShiny = true		--set to true if you want to catch encountered shiny's else false


						-- CATCH CONFIGURATION --CASE INSENSITIVE
			--SINGLE CATCHING

singleCatch = false		--Set to true if you want to catch only 1 Pokes and set multipleCatch to false
	
toHunt = "Torchic"		--Set/Change the name of Pokemon you want to Catch     
huntMap = "Zone 6"		--Set/Change the Map Area of the Pokemon    --OPTIONS: "Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5", "Zone 6"



			--MULTIPLE CATCHING

multipleCatch = true		--Set to true if you want to catch multiple Pokes at Different Time and set singleCatch to false
				--NOTE: PLEASE PROPERLY ARRANGE THE TEAM ACCORDING TO YOUR INPUT CONFIG


			--MORNING TIME CONFIG

toHunt1 = "Torchic"		--Set/Change the name of Pokemon you want to Catch
huntMap1 = "Zone 6"		--Set/Change the Map Area of the 1st Pokemon    --OPTIONS: "Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5", "Zone 6"



synch1 = "Adamant"			--Set the Nature of the Synch Poke to Use at Morning
synchIndex1 = 1			--Do not touch this line!

			--DAY TIME CONFIG

toHunt2 = "Torchic"			--Set/Change the name of Pokemon you want to Catch at Noon
huntMap2 = "Zone 6"			--Set/Change the Map Area of the 2nd Pokemon    --OPTIONS: "Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5", "Zone 6"


synch2 = "Adamant"		--Set the Nature of the Synch Poke to Use at Noon
synchIndex2 = 1			--set the Index # of the Synch Poke to Use at Noon, elseif the same leave
			--NIGHT TIME CONFIG

toHunt3 = "Treecko"			--Set/Change the name of Pokemon you want to Catch at Night
huntMap3 = "Zone 1"		--Set/Change the Map Area of the 3rdPokemon    --OPTIONS: "Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5", "Zone 6"


synch3 = "Timid"		--Set the Nature of the Synch Poke to Use at Night		
synchIndex3 = 3 		--set the Index # of the Synch Poke to Use at Night, elseif the same leave




	--ADDED HUNT	--Use this if multiple catch is full and you think you can Hunt another poke in the same area

Add = false		--Set to true if you want to catch another pokemon
addHunt1 = "Rhyhorn"	--Set the name of the pokemon
addHunt2 = ""		--Set the name of the pokemon
addHunt3 = ""		--Set the name of the pokemon



fishItem = "Super Rod"		--Set/Change the Name of the Fishing Item you want to Use, Don't leave it blank		--NOT USABLE at HOENN






	-- You can only choose One Special Catching, set true, else leave the 3 false

                                   --use only normalCatchOn if you don't have fswiper and sleeper
                                   --Leave blank at sleepmove/weakmove if you don't have atleast


normalCatchOn = false        --Directly throw pokeballs on hunted pokemons
fswipeOn = true        --Switch to pokemon with false swipe, use false swipe until the hunted pokes hp is reach to 1 then throw pokeballs
sleepOn = false            --Switch to pokemon with sleep move, use sleep move until the hunted pokes status is SLEEPING then throw pokeballs
advanceCatchOn = false        --Use fswipeOn and sleepOn to catch hunted pokes

falseswiper = 2            --Index of pokemon with false swipe
fswipeHP = 10            --Returns the health percent of the false swiper, then heal to PC
weakmove = "False Swipe"    --False Swipe move --If you have no false swiper change to "None"

sleeper = 2            --Index of pokemon with sleep move
sleeperHP = 10            --Returns the health percent of the false swiper, then heal to PC
sleepmove = "None"        --Set/Change the name of the sleep move --If you have no sleeper change to "None"



 			--MOUNTING CONFIGURATION


    -- Set/Change the name of the mount you want to use on LAND

mount = "Arcanine Mount"

    -- Set/Change to true if you want to use mount,else false

mountSwitch = true









		--WARNING!!! DO NOT TOUCH THE CODES BELOW!!!


					 -- Copyright © 2016 redskhie
			--List of Pokemon to Catch

	local ZoneOneList = {"Pikachu", "Treecko", "Girafarig", "Natu", "Wobuffet", "Buneary"}
	local ZoneTwoList = {"Natu", "Beldum"}
	local ZoneThreeList = {"Riolu", "Rhyhorn", "Heracross"}
	local ZoneFourList = {"Litleo", "Heracross", "Stantler", "Donphan", "Pinsir"}
	local ZoneFiveList = {"Gligar", "Aipom", "Mareep", "Snubbull"}
	local ZoneFiveSurfList = {"Mudkip", "Remoraid", "Marill", "Octillery"}
	local ZoneSixList = {"Torchic", "Aipom", "Houndour", "Teddiursa", "Pineco", "Miltank"}
		
					 -- Copyright © 2016 redskhie



name = "All in One Catcher at Hoenn Safari"
author = "redskhie"
description = [[This script will catch your desired Pokemons at Hoenn Safari]]



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

  
function pc()

	if getMapName() == "Lilycove City" then
            	moveToMap("Pokecenter Lilycove City")
        elseif getMapName() == "Route 121" then
                moveToMap("Lilycove City")
        elseif getMapName() == "Hoenn Safari Zone Lobby" then
                moveToMap("Route 121")
	elseif getMapName() == "Hoenn Safari Zone Area 6" then
		moveToMap("Hoenn Safari Zone Area 5")
	elseif getMapName() == "Hoenn Safari Zone Area 3" then
		moveToMap("Hoenn Safari Zone Area 4")
	elseif getMapName() == "Hoenn Safari Zone Area 5" or getMapName() == "Hoenn Safari Zone Area 4" then
		moveToMap("Hoenn Safari Zone Area 1")
	elseif getMapName() == "Hoenn Safari Zone Area 1" then
		moveToCell(23,48)
        elseif getMapName() == "Hoenn Safari Zone Area 2" then
		moveToMap("Hoenn Safari Zone Area 1")
        elseif getMapName() == "Pokecenter Lilycove City" then
            usePokecenter()
        end
    	
end

function Zone1()

	if getMapName() == "Pokecenter Lilycove City" then
            	moveToMap("Lilycove City")
        elseif getMapName() == "Lilycove City" then
                moveToMap("Route 121")
        elseif getMapName() == "Route 121" then
                moveToMap("Hoenn Safari Zone Lobby")
        elseif getMapName() == "Hoenn Safari Zone Lobby" then
                talkToNpcOnCell(21, 6)
	elseif getMapName() == "Hoenn Safari Zone Area 6" then
		moveToMap("Hoenn Safari Zone Area 5")
	elseif getMapName() == "Hoenn Safari Zone Area 3" then
		moveToMap("Hoenn Safari Zone Area 4")
	elseif getMapName() == "Hoenn Safari Zone Area 5" or getMapName() == "Hoenn Safari Zone Area 4" or getMapName() == "Hoenn Safari Zone Area 2" then
		moveToMap("Hoenn Safari Zone Area 1")
        elseif getMapName() == "Hoenn Safari Zone Area 1" then
                moveToGrass()
        end

end

function Zone2()

	if getMapName() == "Pokecenter Lilycove City" then
            	moveToMap("Lilycove City")
        elseif getMapName() == "Lilycove City" then
                moveToMap("Route 121")
        elseif getMapName() == "Route 121" then
                moveToMap("Hoenn Safari Zone Lobby")
        elseif getMapName() == "Hoenn Safari Zone Lobby" then
                talkToNpcOnCell(21, 6)
	elseif getMapName() == "Hoenn Safari Zone Area 6" then
		moveToMap("Hoenn Safari Zone Area 5")
	elseif getMapName() == "Hoenn Safari Zone Area 3" then
		moveToMap("Hoenn Safari Zone Area 4")
	elseif getMapName() == "Hoenn Safari Zone Area 5" or getMapName() == "Hoenn Safari Zone Area 4" then
		moveToMap("Hoenn Safari Zone Area 1")
	elseif getMapName() == "Hoenn Safari Zone Area 1" then
		moveToMap("Hoenn Safari Zone Area 2")
        elseif getMapName() == "Hoenn Safari Zone Area 2" then
                moveToGrass()
        end

end
function Zone3()

	if getMapName() == "Pokecenter Lilycove City" then
            	moveToMap("Lilycove City")
        elseif getMapName() == "Lilycove City" then
                moveToMap("Route 121")
        elseif getMapName() == "Route 121" then
                moveToMap("Hoenn Safari Zone Lobby")
        elseif getMapName() == "Hoenn Safari Zone Lobby" then
                talkToNpcOnCell(21, 6)
	elseif getMapName() == "Hoenn Safari Zone Area 6" then
		moveToMap("Hoenn Safari Zone Area 5")
	elseif getMapName() == "Hoenn Safari Zone Area 4" then
		moveToMap("Hoenn Safari Zone Area 3")
	elseif getMapName() == "Hoenn Safari Zone Area 5" or getMapName() == "Hoenn Safari Zone Area 2" then
		moveToMap("Hoenn Safari Zone Area 1")
	elseif getMapName() == "Hoenn Safari Zone Area 1" then
		moveToMap("Hoenn Safari Zone Area 4")
        elseif getMapName() == "Hoenn Safari Zone Area 3" then
                moveToGrass()
        end

end
function Zone4()

	if getMapName() == "Pokecenter Lilycove City" then
            	moveToMap("Lilycove City")
        elseif getMapName() == "Lilycove City" then
                moveToMap("Route 121")
        elseif getMapName() == "Route 121" then
                moveToMap("Hoenn Safari Zone Lobby")
        elseif getMapName() == "Hoenn Safari Zone Lobby" then
                talkToNpcOnCell(21, 6)
	elseif getMapName() == "Hoenn Safari Zone Area 6" then
		moveToMap("Hoenn Safari Zone Area 5")
	elseif getMapName() == "Hoenn Safari Zone Area 3" then
		moveToMap("Hoenn Safari Zone Area 4")
	elseif getMapName() == "Hoenn Safari Zone Area 5" or getMapName() == "Hoenn Safari Zone Area 2" then
		moveToMap("Hoenn Safari Zone Area 1")
	elseif getMapName() == "Hoenn Safari Zone Area 1" then
		moveToMap("Hoenn Safari Zone Area 4")
        elseif getMapName() == "Hoenn Safari Zone Area 4" then
                moveToGrass()
        end

end

function Zone5()

	if getMapName() == "Pokecenter Lilycove City" then
            	moveToMap("Lilycove City")
        elseif getMapName() == "Lilycove City" then
                moveToMap("Route 121")
        elseif getMapName() == "Route 121" then
                moveToMap("Hoenn Safari Zone Lobby")
        elseif getMapName() == "Hoenn Safari Zone Lobby" then
                talkToNpcOnCell(21, 6)
	elseif getMapName() == "Hoenn Safari Zone Area 6" then
		moveToMap("Hoenn Safari Zone Area 5")
	elseif getMapName() == "Hoenn Safari Zone Area 3" then
		moveToMap("Hoenn Safari Zone Area 4")
	elseif getMapName() == "Hoenn Safari Zone Area 2" or getMapName() == "Hoenn Safari Zone Area 4" then
		moveToMap("Hoenn Safari Zone Area 1")
	elseif getMapName() == "Hoenn Safari Zone Area 1" then
		moveToMap("Hoenn Safari Zone Area 5")
        elseif getMapName() == "Hoenn Safari Zone Area 5" then
                List5()
        end


end

function Zone6()

	if getMapName() == "Pokecenter Lilycove City" then
            	moveToMap("Lilycove City")
        elseif getMapName() == "Lilycove City" then
                moveToMap("Route 121")
        elseif getMapName() == "Route 121" then
                moveToMap("Hoenn Safari Zone Lobby")
        elseif getMapName() == "Hoenn Safari Zone Lobby" then
                talkToNpcOnCell(21, 6)
	elseif getMapName() == "Hoenn Safari Zone Area 5" then
		moveToMap("Hoenn Safari Zone Area 6")
	elseif getMapName() == "Hoenn Safari Zone Area 3" then
		moveToMap("Hoenn Safari Zone Area 4")
	elseif getMapName() == "Hoenn Safari Zone Area 2" or getMapName() == "Hoenn Safari Zone Area 4" then
		moveToMap("Hoenn Safari Zone Area 1")
	elseif getMapName() == "Hoenn Safari Zone Area 1" then
		moveToMap("Hoenn Safari Zone Area 5")
        elseif getMapName() == "Hoenn Safari Zone Area 6" then
                moveToGrass()
        end


end

function natureSwap()
	
	if synch1 ~= synch2 and synch2 ~= synch3 then
	
	if isMorning() and getPokemonNature(synchIndex1) == synch3 and getPokemonNature(synchIndex2) == synch1 and getPokemonNature(synchIndex3) == synch2 then
		return swapPokemon(synchIndex1, synchIndex2)
	elseif isMorning() and getPokemonNature(synchIndex1) == synch3 and getPokemonNature(synchIndex2) == synch2 and getPokemonNature(synchIndex3) == synch1 then
		return swapPokemon(synchIndex1, synchIndex3)
	elseif isMorning() and getPokemonNature(synchIndex1) == synch1 then

		if huntMap1 == "Zone 1" then
			Zone1()
		elseif huntMap1 == "Zone 2" then
			Zone2()
		elseif huntMap1 == "Zone 3" then
			Zone3()
		elseif huntMap1 == "Zone 4" then
			Zone4()
		elseif huntMap1 == "Zone 5" then
			Zone5()
		elseif huntMap1 == "Zone 6" then
			Zone6()
		end

	end

	if isNoon() and getPokemonNature(synchIndex1) == synch1 and getPokemonNature(synchIndex2) == synch2 and getPokemonNature(synchIndex3) == synch3 then
		return swapPokemon(synchIndex1, synchIndex2)
	elseif isNoon() and getPokemonNature(synchIndex1) == synch1 and getPokemonNature(synchIndex2) == synch3 and getPokemonNature(synchIndex3) == synch2 then
		return swapPokemon(synchIndex1, synchIndex3)
	elseif isNoon() and getPokemonNature(synchIndex1) == synch2 then

		if huntMap2 == "Zone 1" then
			Zone1()
		elseif huntMap2 == "Zone 2" then
			Zone2()
		elseif huntMap2 == "Zone 3" then
			Zone3()
		elseif huntMap2 == "Zone 4" then
			Zone4()
		elseif huntMap2 == "Zone 5" then
			Zone5()
		elseif huntMap2 == "Zone 6" then
			Zone6()
		end
	end
	
	if isNight() and getPokemonNature(synchIndex1) == synch2 and getPokemonNature(synchIndex2) == synch3 and getPokemonNature(synchIndex3) == synch1 then
		return swapPokemon(synchIndex1, synchIndex2)
	elseif isNight() and getPokemonNature(synchIndex1) == synch2 and getPokemonNature(synchIndex2) == synch1 and getPokemonNature(synchIndex3) == synch3 then
		return swapPokemon(synchIndex1, synchIndex3)
	elseif isNight() and getPokemonNature(synchIndex1) == synch3 then

		if huntMap3 == "Zone 1" then
			Zone1()
		elseif huntMap3 == "Zone 2" then
			Zone2()
		elseif huntMap3 == "Zone 3" then
			Zone3()
		elseif huntMap3 == "Zone 4" then
			Zone4()
		elseif huntMap3 == "Zone 5" then
			Zone5()
		elseif huntMap3 == "Zone 6" then
			Zone6()
		end
	end
	
	elseif synch1 == synch2 and synch2 ~= synch3 then
	
	if isMorning() and getPokemonNature(1) ~= synch1 then
		return swapPokemon(synchIndex1, synchIndex3)
	elseif isMorning() and getPokemonNature(1) == synch1 then
		if huntMap1 == "Zone 1" then
			Zone1()
		elseif huntMap1 == "Zone 2" then
			Zone2()
		elseif huntMap1 == "Zone 3" then
			Zone3()
		elseif huntMap1 == "Zone 4" then
			Zone4()
		elseif huntMap1 == "Zone 5" then
			Zone5()
		elseif huntMap1 == "Zone 6" then
			Zone6()
		end
	end
	if isNoon() and getPokemonNature(1) ~= synch2 then
		return swapPokemon(synchIndex2, synchIndex3)
	elseif isNoon() and getPokemonNature(1) == synch2 then
		if huntMap2 == "Zone 1" then
			Zone1()
		elseif huntMap2 == "Zone 2" then
			Zone2()
		elseif huntMap2 == "Zone 3" then
			Zone3()
		elseif huntMap2 == "Zone 4" then
			Zone4()
		elseif huntMap2 == "Zone 5" then
			Zone5()
		elseif huntMap2 == "Zone 6" then
			Zone6()
		end
	end
	if isNight() and getPokemonNature(1) ~= synch3 then
		return swapPokemon(synchIndex2, synchIndex3)
	elseif isNight() and getPokemonNature(1) == synch3 then
		if huntMap3 == "Zone 1" then
			Zone1()
		elseif huntMap3 == "Zone 2" then
			Zone2()
		elseif huntMap3 == "Zone 3" then
			Zone3()
		elseif huntMap3 == "Zone 4" then
			Zone4()
		elseif huntMap3 == "Zone 5" then
			Zone5()
		elseif huntMap3 == "Zone 6" then
			Zone6()
		end
	end
	
	elseif synch1 == synch3 and synch2 ~= synch3 then
	
	if isMorning() and getPokemonNature(1) ~= synch1 then
		return swapPokemon(synchIndex1, synchIndex2)
	elseif isMorning() and getPokemonNature(1) == synch1 then
		if huntMap1 == "Zone 1" then
			Zone1()
		elseif huntMap1 == "Zone 2" then
			Zone2()
		elseif huntMap1 == "Zone 3" then
			Zone3()
		elseif huntMap1 == "Zone 4" then
			Zone4()
		elseif huntMap1 == "Zone 5" then
			Zone5()
		elseif huntMap1 == "Zone 6" then
			Zone6()
		end
	end
	if isNoon() and getPokemonNature(1) ~= synch2 then
		return swapPokemon(synchIndex2, synchIndex1)
	elseif isNoon() and getPokemonNature(1) == synch2 then
		if huntMap2 == "Zone 1" then
			Zone1()
		elseif huntMap2 == "Zone 2" then
			Zone2()
		elseif huntMap2 == "Zone 3" then
			Zone3()
		elseif huntMap2 == "Zone 4" then
			Zone4()
		elseif huntMap2 == "Zone 5" then
			Zone5()
		elseif huntMap2 == "Zone 6" then
			Zone6()
		end
	end
	if isNight() and getPokemonNature(1) ~= synch3 then
		return swapPokemon(synchIndex2, synchIndex3)
	elseif isNight() and getPokemonNature(1) == synch3 then
		if huntMap3 == "Zone 1" then
			Zone1()
		elseif huntMap3 == "Zone 2" then
			Zone2()
		elseif huntMap3 == "Zone 3" then
			Zone3()
		elseif huntMap3 == "Zone 4" then
			Zone4()
		elseif huntMap3 == "Zone 5" then
			Zone5()
		elseif huntMap3 == "Zone 6" then
			Zone6()
		end
	end
	
	elseif synch1 == synch3 and synch2 == synch3 then
	
	if isMorning() and getPokemonNature(1) == synch1 then
		if huntMap1 == "Zone 1" then
			Zone1()
		elseif huntMap1 == "Zone 2" then
			Zone2()
		elseif huntMap1 == "Zone 3" then
			Zone3()
		elseif huntMap1 == "Zone 4" then
			Zone4()
		elseif huntMap1 == "Zone 5" then
			Zone5()
		elseif huntMap1 == "Zone 6" then
			Zone6()
		end
	end
	if isNoon() and getPokemonNature(1) == synch2 then
		if huntMap2 == "Zone 1" then
			Zone1()
		elseif huntMap2 == "Zone 2" then
			Zone2()
		elseif huntMap2 == "Zone 3" then
			Zone3()
		elseif huntMap2 == "Zone 4" then
			Zone4()
		elseif huntMap2 == "Zone 5" then
			Zone5()
		elseif huntMap2 == "Zone 6" then
			Zone6()
		end
	end
	if isNight() and getPokemonNature(1) == synch3 then
		if huntMap3 == "Zone 1" then
			Zone1()
		elseif huntMap3 == "Zone 2" then
			Zone2()
		elseif huntMap3 == "Zone 3" then
			Zone3()
		elseif huntMap3 == "Zone 4" then
			Zone4()
		elseif huntMap3 == "Zone 5" then
			Zone5()
		elseif huntMap3 == "Zone 6" then
			Zone6()
		end
	end
	
	end
	
end
function sleepPP()
	if sleepmove == "Hypnosis" or sleepmove == "Spore" or sleepmove == "Sleep Powder" or sleepmove ~= "None" then 
		return getRemainingPowerPoints(sleeper, sleepmove) >= 1 
	elseif sleepmove == "None" then
		isPokemonUsable(sleeper)
	end
end
function fswipePP()
	if weakmove == "False Swipe" or weakmove ~= "None" then 
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
			if huntMap == "Zone 1" then
				Zone1()
			elseif huntMap == "Zone 2" then
				Zone2()
			elseif huntMap == "Zone 3" then
				Zone3()
			elseif huntMap == "Zone 4" then
				Zone4()
			elseif huntMap == "Zone 5" then
				Zone5()
			elseif huntMap == "Zone 6" then
				Zone6()
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
	elseif isWildBattle() and getOpponentName() == "Beldum" then
            	log("-------- Commencing Sleep Move --------")
            		sleep()
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
	elseif Add and (getOpponentName() == addHunt1 or getOpponentName() == addHunt2 or getOpponentName() == addHunt3) then
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
	elseif (getOpponentName() == "Wobbuffet" ) then
		
		return attack() or sendAnyPokemon()
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
	add1 = 0
	add2 = 0
	add3 = 0
	log("-----------------------------------------------------------")
        log("|---- We are now Commencing the Catch Routine ----|")
        log("-----------------------------------------------------------")
	if multipleCatch then
		log("-------- MULTI-CATCHING STARTED --------")
        	log("-------- Script Information --------")
		log("~~~HUNTED POKEMONS~~~")
		log("-Morning Time: "..toHunt1.."- -Location: Hoenn Safari "..huntMap1.." -")
		log("-Day Time: "..toHunt2.."- -Location: Hoenn Safari "..huntMap2.." -")
		log("-Night Time: "..toHunt3.."- -Location: Hoenn Safari "..huntMap3.." -")
        	log("--------------------------------------")
	elseif singleCatch then
		log("-------- SINGLE-CATCHING STARTED --------")
       		log("-------- Script Information --------")
		log("-We will hunt "..toHunt.." all Day!!!- -Location: Hoenn Safari "..huntMap.." -")
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
		log("~~~HUNTED POKEMONS~~~")
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
