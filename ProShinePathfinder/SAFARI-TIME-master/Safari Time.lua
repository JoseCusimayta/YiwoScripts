
							 -- Copyright © 2016 redskhie

dofile "config.lua"							 
dofile "Safari/NatureSwapExceptions.lua"
dofile "Safari/SafariMaps.lua"
dofile "Safari/MoveExceptions.lua"
dofile "Safari/PokeConditions.lua"
dofile "Safari/LogMapsExcep.lua"


name = "Safari Time v2.3"
author = "redskhie"
description = [[This script will catch your desired Pokemons SAFARI WORLD]]



	local AreaOneList = {"Pinsir", "Kangaskhan", "Scyther"}
	local AreaTwoList = {"Bulbasaur", "Chansey", "Rhyhorn"}
	local AreaThreeList = {"Eevee", "Snorlax", ""}
	local Exclusive = {"Chansey", "Marill", "Pinsir", "Venipede", "Scyther", "Rhyhorn", "Starly"}
	local ZoneOneList = {"Pikachu", "Treecko", "Girafarig", "Natu", "Wobuffet", "Buneary"}
	local ZoneTwoList = {"Natu", "Beldum"}
	local ZoneThreeList = {"Riolu", "Rhyhorn", "Heracross"}
	local ZoneFourList = {"Litleo", "Heracross", "Stantler", "Donphan", "Pinsir"}
	local ZoneFiveList = {"Gligar", "Aipom", "Mareep", "Snubbull"}
	local ZoneFiveSurfList = {"Mudkip", "Remoraid", "Marill", "Octillery"}
	local ZoneSixList = {"Torchic", "Aipom", "Houndour", "Teddiursa", "Pineco", "Miltank"}
	local GrassSwampList = {"Abra", "Chansey", "Chikorita", "Ducklett", "Gastly", "Girafarig", "Haunter", "Lickitung", "Mr Mime", "Murkrow", "Oddish", "Politoed", "Psyduck", "Seedot", "Skiploom", "Smeargle", "Sunkern", "Surskit", "Wooper"}
	local GrassSwampSurfList = {"Ducklett", "Horsea", "Krabby", "Magikarp" , "Marill", "Poliwag", "Poliwhirl"}
	local MountainList = {"Clefairy", "Cyndaquil", "Fearow", "Graveler", "Magmar", "Magnemite", "Magneton", "Mankey", "Onix", "Slugma", "Wobbuffet", "Zubat"}
	local SnowList = {"Delibird", "Jynx", "Seel", "Sneasel", "Snorunt", "Swinub"}
	local SnowSurfList = {"Dewgong", "Horsea", "Lapras", "Psyduck", "Seadra", "Seel", "Spheal"}
	local SnowFishList = {"Shellder"}
	local WetList = {"Tympole", "Poliwag", "Slowpoke", "Wingull", "Wooper"}
	local WetSurfList = {"Goldeen", "Horsea", "Totodile"}
	local WetFishList = {"Chinchou", "Corphish", "Feebas", "Magikarp", "Remoraid", "Staryu"}
	
	
function onDialogMessage(pokecenter)
    if stringContains(pokecenter, "Would you like me to heal your Pokemon?") then
        pokecenterCounter = pokecenterCounter + 1
        if usingLogs then
            log("Info ~ Times in Pokecenter: " .. pokecenterCounter)
        end
    end
end

function onPathAction()

    if not isMounted() and mountSwitch == true and hasItem(mount) and not isSurfing() and isOutside() then
        log("---------------------------")
        log("~~~ Riding on my pet!!! ~~~")
        log("---------------------------")
                return useItem(mount)
	elseif not ( isPokemonUsable(1) or isPokemonUsable(falseswiper) or isPokemonUsable(sleeper) or getRemainingPowerPoints(falseswiper, "False Swipe") > 1 or getRemainingPowerPoints(sleeper, sleepMoves) > 1 ) then
		HealPoke()
    else
		if singleCatch then
			if huntMap == "Area 1" then
				AreaOne()
			elseif huntMap == "Area 2" then
				AreaTwo()
			elseif huntMap == "Area 3" then
				AreaThree()
			elseif huntMap == "Exclusive" then
				Exclusive()
			elseif huntMap == "Zone 1" then
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
			elseif huntMap == "GrassandSwamp" then
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
		log("-Morning Time: "..toHunt1.."- -Location: "..SafariLog().." "..huntMap1.." -")
		log("-Day Time: "..toHunt2.."- -Location: "..SafariLog().." "..huntMap2.." -")
		log("-Night Time: "..toHunt3.."- -Location: "..SafariLog().." "..huntMap3.." -")
        log("--------------------------------------")
	elseif singleCatch then
		log("-------- SINGLE-CATCHING STARTED --------")
       	log("-------- Script Information --------")
		log("-We will hunt "..toHunt.." all Day!!!- -Location: "..SafariLog().." "..huntMap.." -")
        log("--------------------------------------")
	end
	

end
function onPause()
    
    	log(" --------------------------------------------")
        log("|--------- CATCH ROUTINE PAUSED ----------|")
        log(" --------------------------------------------")
		log("|--------- Move Remaining Power Points ----------|")
    	log("--------------------------------------")
    	log("False Swipe: " .. tostring(getRemainingPowerPoints(falseswiper,"False Swipe")))
    	log("Sleep Move: " .. tostring(getRemainingPowerPoints(sleeper,sleepMoves)))
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

