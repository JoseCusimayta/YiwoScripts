							-- Copyright © 2016 redskhie



huntandFarm = false		--set to true if you want to kill all encountered pokes else false
catchUncaught = false		--set to true if you want to catch uncaught pokes else false
catchShiny = true		--set to true if you want to catch encountered shiny's else false


						-- CATCH CONFIGURATION --CASE INSENSITIVE
						
			--SINGLE CATCHING

singleCatch = false		--Set to true if you want to catch only 1 Pokes and set multipleCatch to false
	
toHunt = "Eevee"		--Set/Change the name of Pokemon you want to Catch     
huntMap = "Area 3"		--Set/Change the Map Area of the Pokemon    --OPTIONS: "Area 1", "Area 2", "Area 3", "Exclusive", "Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5", "Zone 6", "GrassandSwamp", "Mountain", "Snow", "Wet"




			--MULTIPLE CATCHING

multipleCatch = true		--Set to true if you want to catch multiple Pokes at Different Time and set singleCatch to false
				--NOTE: PLEASE PROPERLY ARRANGE THE TEAM ACCORDING TO YOUR INPUT CONFIG


			--MORNING TIME CONFIG

toHunt1 = "Eevee"		--Set/Change the name of Pokemon you want to Catch
huntMap1 = "Area 3"		--Set/Change the Map Area of the 1st Pokemon    --OPTIONS: "Area 1", "Area 2", "Area 3", "Exclusive", "Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5", "Zone 6", "GrassandSwamp", "Mountain", "Snow", "Wet"



synch1 = "Adamant"			--Set the Nature of the Synch Poke to Use at Morning
synchIndex1 = 1			--Do not touch this line!

			--DAY TIME CONFIG

toHunt2 = "Eevee"			--Set/Change the name of Pokemon you want to Catch at Noon
huntMap2 = "Area 3"			--Set/Change the Map Area of the 2nd Pokemon    --OPTIONS: "Area 1", "Area 2", "Area 3", "Exclusive", "Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5", "Zone 6", "GrassandSwamp", "Mountain", "Snow", "Wet"


synch2 = "Adamant"		--Set the Nature of the Synch Poke to Use at Noon
synchIndex2 = 1			--set the Index # of the Synch Poke to Use at Noon, elseif the same leave
			--NIGHT TIME CONFIG

toHunt3 = "Chansey"			--Set/Change the name of Pokemon you want to Catch at Night
huntMap3 = "Area 2"		--Set/Change the Map Area of the 3rdPokemon    --OPTIONS: "Area 1", "Area 2", "Area 3", "Exclusive", "Zone 1", "Zone 2", "Zone 3", "Zone 4", "Zone 5", "Zone 6", "GrassandSwamp", "Mountain", "Snow", "Wet"


synch3 = "Adamant"		--Set the Nature of the Synch Poke to Use at Night		
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

fswipeHP = 10            --Returns the health percent of the false swiper, then heal to PC

sleeperHP = 10            --Returns the health percent of the false swiper, then heal to PC



 			--MOUNTING CONFIGURATION


    -- Set/Change the name of the mount you want to use on LAND

mount = "Arcanine Mount"

    -- Set/Change to true if you want to use mount,else false

mountSwitch = true

							-- Copyright © 2016 redskhie


