                            -- Copyright © 2016 redskhie


        --CHOOSE WHAT POKEMON DO YOU WANT TO HUNT
        -- WARNING!!! YOU CAN ONLY PICK 1 "true" then leave "false"

    -- Set to true if you want to catch this Pokemon, else leave false

huntEevee = false        --hunt Eevee all time    
huntScyther = false        --hunt Scyther all time
huntPinsir = false        --hunt Pinsir all time
huntBulba = false        --hunt Bulbasaur all time
huntChansey = false        --hunt Chansey all time
huntRhyhorn = false        --hunt Rhyhorn all time
huntKanga = false        --hunt Kangaskhan all time
huntChanseyBulba = false        --hunt Chansey and Bulbasaur all time


    -- If you want to use this Go to Synchronize Section after picking 1 at the bottom
    -- Set to true if you want to catch multiple Pokemon at multiple time, else leave false

huntEeveeRhyhorn = false    --hunt Eevee at Morning and Day        -- hunt Rhyhorn at Night
huntEeveeBulba = true         --hunt Eevee at Morning and Day     -- hunt Bulbasaur at Night
huntEeveeChansey = false    --hunt Eevee at Morning and Day        -- hunt Chansey at Night
huntEeveeScytherPinsir = false     --hunt Eevee at Morning and Day     -- hunt Scyther and Pinsir at Night

    --You can only use this if you have MEMBERSHIP

        --UNTESTED

huntEeveeUmbreon = false    --hunt Eevee at Morning and Day        -- hunt Umbreon at Night
huntEeveeMarill = false        --hunt Eevee at Morning and Day         -- hunt Marill at Night
huntStarlyUmbreon = false        --hunt Starly at Morning and Day    -- hunt Umbreon at Night
huntDratiniStarlyUmbreon = false        --hunt Dratini at Morning     --hunt Starly Day    -- hunt Umbreon at Night
huntScytherRhyhorn = false        --hunt Scyther and Rhyhorn all time




        			-- CATCH CONFIGURATION

                --If you don't have synch poke leave. And don't use the multiple hunt

	--Use synch1 at MORNING and DAY Time/	synch2 at NIGHT Time


    --Synchronize
    
synch1 = 1            --Pokemon Index of 1st SynchPoke
nature1 = "Timid"    --Pokemon Nature of 1st SynchPoke
synch2 = 3            --Pokemon Index of 2nd SynchPoke
nature2 = "Adamant"    --Pokemon Nature of 2nd SynchPoke


    -- You can only choose One Special Catching, set true, else leave the 3 false
                                   --use only normalCatchOn if you don't have fswiper and sleeper
                                   --Leave blank at sleepmove/weakmove if you don't have atleast


normalCatchOn = true        --Directly throw pokeballs on hunted pokemons
fswipeOn = false        --Switch to pokemon with false swipe, use false swipe until the hunted pokes hp is reach to 1 then throw pokeballs
sleepOn = false            --Switch to pokemon with sleep move, use sleep move until the hunted pokes status is SLEEPING then throw pokeballs
advanceCatchOn = false        --Use fswipeOn and sleepOn to catch hunted pokes

falseswiper = 4            --Index of pokemon with false swipe
fswipeHP = 10            --Returns the health percent of the false swiper, then heal to PC
weakmove = "False Swipe"    --False Swipe move --Change to "None" if you don't have

sleeper = 4            --Index of pokemon with sleep move
sleeperHP = 10            --Returns the health percent of the false swiper, then heal to PC
sleepmove = "None"        --Set/Change the name of the sleep move --Change to "None" if you don't have



        --MOUNTING CONFIGURATION


    -- Set/Change the name of the mount you want to use on LAND

mount = "Arcanine Mount"

    -- Set/Change to true if you want to use mount,else false

mountSwitch = true



        --POKEBALL CONFIGURATION

    --Disable/enable pokeball function. set to true else false

ballSwitch = false

    


    --POKEBALLS --Great ball is the default balls it will buy

ballquantity = 10         --set the number of balls you want to buy
minball = 49            --set the minimum number of balls and bot will buy more    




        --MONEY FARMING CONFIGURATION


huntandfarm = false    --set this to true if you want to farm money while hunting pokes

moneyfarm = false    --set this to true if you want to farm money when minimum money reaches, else false
minmoney = 1000    --set the minimum money to start farming
maxmoney = 100000    --set the maximum money to start again on hunting pokes

    --Set the number of pokemon you want to remain while farming and start healing

pokeNumber = 2

    --Pick only one area of farming

cCave = true        --Start farming at Cerulean Cave 1F
sFoam = false        --Start farming at Seafoam B4F






                            -- Copyright © 2016 redskhie






        --DO NOT TOUCH THIS if you don't know what you're doing!

name = "Rare catcher at Kanto Safari"
author = "redskhie"
description = [[This script will catch your desired Pokemons at Kanto Safari]]

function onStart()
    
    startime = os.time()

    shinyCounter = 0

    eeveecounter = 0
    scythercounter = 0
    pinsircounter = 0
    bulbacounter = 0
    chanseycounter = 0
    rhycounter = 0
    kangascounter = 0
    umbreoncounter = 0
    starlycounter = 0
    pokecenterCounter = 0
    wildCounter = 0
    
    startingMoney = getMoney()

    log("-----------------------------------------------------------")
        log("|---- We are now Commencing the Catch Routine ----|")
        log("-----------------------------------------------------------")

    if huntEeveeRhyhorn then
        log("-------- MULTI-CATCHING STARTED --------")
        log("Script Info ~~> Hunting Eevee at Morning and Day ~ Hunting Rhyhorn at Night")
        log("--------------------------------------")
    elseif huntEeveeBulba then
        log("-------- MULTI-CATCHING STARTED --------")
        log("Script Info ~~> Hunting Eevee at Morning and Day ~ Hunting Bulbasaur at Night")
        log("--------------------------------------")
    elseif huntEeveeChansey then
        log("-------- MULTI-CATCHING STARTED --------")
        log("Script Info ~~> Hunting Eevee at Morning and Day ~ Hunting Chansey at Night")
        log("--------------------------------------")
    elseif huntEeveeScytherPinsir then
        log("-------- MULTI-CATCHING STARTED --------")
        log("Script Info ~~> Hunting Eevee at Morning and Day ~ Hunting Scyther and Pinsir at Night")
        log("--------------------------------------")
    elseif huntEeveeUmbreon then
        log("-------- MULTI-CATCHING STARTED --------")
        log("Script Info ~~> Hunting Eevee at Morning and Day ~ Hunting Umbreon and Pinsir at Night")
        log("--------------------------------------")
    elseif huntStarlyUmbreon then
        log("-------- MULTI-CATCHING STARTED --------")
        log("Script Info ~~> Hunting Starly at Morning and Day ~ Hunting Umbreon at Night")
        log("--------------------------------------")
    elseif huntEeveeMarill then
        log("-------- MULTI-CATCHING STARTED --------")
        log("Script Info ~~> Hunting Eevee at Morning and Day ~ Hunting Marill at Night")
        log("--------------------------------------")
    end

    if huntEevee then
        log("-------- SINGLE-CATCHING STARTED --------")
        log("Script Info ~~> Hunting Eevee at Safari Area 3")
        log("--------------------------------------")
    elseif huntScyther then
        log("-------- SINGLE-CATCHING STARTED --------")
        log("Script Info ~~> Hunting Scyther at Safari Area 1")
        log("--------------------------------------")
    elseif huntPinsir then
        log("-------- SINGLE-CATCHING STARTED --------")
        log("Script Info ~~> Hunting Pinsir at Safari Area 1")
        log("--------------------------------------")
    elseif huntBulba then
        log("-------- SINGLE-CATCHING STARTED --------")
        log("Script Info ~~> Hunting Bulbasaur at Safari Area 2")
        log("--------------------------------------")
    elseif huntChansey then
        log("-------- SINGLE-CATCHING STARTED --------")
        log("Script Info ~~> Hunting Chansey at Safari Area 2")
        log("--------------------------------------")
    elseif huntRhyhorn then
        log("-------- SINGLE-CATCHING STARTED --------")
        log("Script Info ~~> Hunting Rhyhorn at Safari Area 2")
        log("--------------------------------------")
    elseif huntKanga then
        log("-------- SINGLE-CATCHING STARTED --------")
        log("Script Info ~~> Hunting Kangaskhan at Safari Area 1")
        log("--------------------------------------")
    elseif huntChanseyBulba then
        log("-------- SINGLE-CATCHING STARTED --------")
        log("Script Info ~~> Hunting Chansey and Bulbasaur at Safari Area 2")
        log("--------------------------------------")

    end
    if moneyfarm then
        if cCave then
            log("~Farming money at Cerulean Cave 1F when money is less than "..minmoney.." pokedollars")
            log("~Continue hunting when money reached to "..maxmoney.."+ pokedollars")
            log("--------------------------------------")
        elseif sFoam then
            log("~Farming money at Seafoam B4F when money is less than "..minmoney.." pokedollars")
            log("~Continue hunting when money reached to "..maxmoney.."+ pokedollars")
            log("--------------------------------------")
        end
    end
    if huntandfarm then
        log("Killing all encountered pokes while hunting your desired pokes")
        log("--------------------------------------")
    end
    pokeballCounter = 0

end
function onDialogMessage(pokecenter)
    if stringContains(pokecenter, "Would you like me to heal your Pokemon?") then
        pokecenterCounter = pokecenterCounter + 1
        if usingLogs then
            log("Info ~ Times in Pokecenter: " .. pokecenterCounter)
        end
    end
end
function areaone()

            
        if getMapName() == "Pokecenter Fuchsia" then
            moveToMap("Fuchsia City")
        elseif getMapName() == "Fuchsia City" then
            moveToMap("Safari Stop")
        elseif getMapName() == "Safari Stop" then
            talkToNpcOnCell(6, 4)    
        elseif getMapName() == "Safari Entrance" then
            moveToMap("Safari Area 1")
        elseif getMapName() == "Safari Area 2" then
            moveToMap("Safari Area 1")
        elseif getMapName() == "Safari Area 3" then
            moveToMap("Safari Area 2")
        elseif getMapName() == "Fuchsia Pokemart" then
            moveToMap("Fuchsia City")
        elseif getMapName() == "Safari Area 1" then
            moveToGrass()
        elseif getMapName() ~= "Fuchsia City" then
            backtofarm()
        end
    
end

function areatwo()

        if getMapName() == "Pokecenter Fuchsia" then
            moveToMap("Fuchsia City")
        elseif getMapName() == "Fuchsia City" then
            moveToMap("Safari Stop")
        elseif getMapName() == "Safari Stop" then
            talkToNpcOnCell(6, 4)    
        elseif getMapName() == "Safari Entrance" then
            moveToMap("Safari Area 1")
        elseif getMapName() == "Safari Area 2" then
            moveToGrass()
        elseif getMapName() == "Safari Area 1" then
            moveToMap("Safari Area 2")
        elseif getMapName() == "Fuchsia Pokemart" then
            moveToMap("Fuchsia City")
        elseif getMapName() == "Safari Area 3" then
            moveToMap("Safari Area 2")
        elseif getMapName() ~= "Fuchsia City" then
            backtofarm()
        end
    
end

function areathree()

    
        if getMapName() == "Pokecenter Fuchsia" then
            moveToMap("Fuchsia City")
        elseif getMapName() == "Fuchsia City" then
            moveToMap("Safari Stop")
        elseif getMapName() == "Safari Stop" then
            talkToNpcOnCell(6, 4)    
        elseif getMapName() == "Safari Entrance" then
            moveToMap("Safari Area 3")
        elseif getMapName() == "Safari Area 2" then
            moveToMap("Safari Area 3")
        elseif getMapName() == "Safari Area 1" then
            moveToMap("Safari Entrance")
        elseif getMapName() == "Fuchsia Pokemart" then
            moveToMap("Fuchsia City")
        elseif getMapName() == "Safari Area 3" then
            moveToRectangle(25, 29, 30, 29)
        elseif getMapName() ~= "Fuchsia City" then
            backtofarm()
        end
    
end

function area13()

        
        if not isNight() and getPokemonNature(synch1) ~= nature1 then
            return swapPokemon(synch2, synch1)
        elseif not isNight() and getPokemonNature(synch1) == nature1 then

            areathree()

        elseif isNight() and getPokemonNature(synch1) ~= nature2 then
            return swapPokemon(synch2, synch1)
        elseif isNight() and getPokemonNature(synch1) == nature2 then

            areaone()

        
        end
    

end

function area23()
    
     if isPokemonUsable(1) and isPokemonUsable(falseswiper) and getPokemonHealthPercent(falseswiper) > fswipeHP and getPokemonHealthPercent(sleeper) > sleeperHP and isPokemonUsable(sleeper) and getRemainingPowerPoints(sleeper, sleepmove) >= 1 and getRemainingPowerPoints(falseswiper, weakmove) >= 1 then
    
        if not isNight() and getPokemonNature(synch1) ~= nature1 then
            return swapPokemon(synch2, synch1)
        elseif not isNight() and getPokemonNature(synch1) == nature1 then

            areathree()

        end
        if isNight() and getPokemonNature(synch1) ~= nature2 then
            return swapPokemon(synch2, synch1)
        elseif isNight() and getPokemonNature(synch1) == nature2 then

            areatwo()

        end

    else
        pc()
    end    
end
function exclusive()
        
         	if getMapName() == "Pokecenter Fuchsia" then
                    moveToMap("Fuchsia City")
            	elseif getMapName() == "Fuchsia City" then    
                    moveToMap("Safari Stop")
                elseif getMapName() == "Safari Stop" then
                    talkToNpcOnCell(6, 4)
                elseif getMapName() == "Safari Entrance" then
                     moveToMap("Safari Area 3")
                elseif getMapName() == "Safari Area 3" then
                    talkToNpcOnCell(17, 34)
       		elseif getMapName() == "Fuchsia Pokemart" then
            		moveToMap("Fuchsia City")
        	elseif getMapName() == "Safari Exclusive" then
                    moveToRectangle(13, 11, 18, 11)
        	elseif getMapName() ~= "Fuchsia City" then
            		backtofarm()
        	end

end

function exwater()
        
         	if getMapName() == "Pokecenter Fuchsia" then
                    moveToMap("Fuchsia City")
            	elseif getMapName() == "Fuchsia City" then    
                    moveToMap("Safari Stop")
                elseif getMapName() == "Safari Stop" then
                    talkToNpcOnCell(6, 4)
                elseif getMapName() == "Safari Entrance" then
                     moveToMap("Safari Area 3")
                elseif getMapName() == "Safari Area 3" then
                    talkToNpcOnCell(17, 34)
       		elseif getMapName() == "Fuchsia Pokemart" then
            		moveToMap("Fuchsia City")
        	elseif getMapName() == "Safari Exclusive" then
                    moveToWater()
        	elseif getMapName() ~= "Fuchsia City" then
            		backtofarm()
        	end

end

function areaex3()
    
    
        if not isNight() and getPokemonNature(synch1) ~= nature1 then
            return swapPokemon(synch2, synch1)
        elseif not isNight() and getPokemonNature(synch1) == nature1 then

            areathree()

        end
        if isNight() and getPokemonNature(synch1) ~= nature2 then
            return swapPokemon(synch2, synch1)
        elseif isNight() and getPokemonNature(synch1) == nature2 then

            exclusive()

        end
    
    

end

function ball()
        if getMapName() == "Safari Exclusive" then
                    talkToNpcOnCell(21, 3)
        elseif getMapName() == "Safari Area 2" then
            moveToMap("Safari Area 1")
        elseif getMapName() == "Safari Area 3" then
            moveToMap("Safari Entrance")
        elseif getMapName() == "Safari Area 1" then
            if not isMounted() then
                useItem("Arcanine Mount")
            elseif isMounted() then
                moveToMap("Safari Entrance")
            end
        elseif getMapName() == "Safari Entrance" then
            talkToNpcOnCell(27, 25)
        elseif getMapName() == "Safari Stop" then
            moveToMap("Fuchsia City")
        elseif getMapName() == "Pokecenter Fuchsia" then
            moveToMap("Fuchsia City")
        elseif getMapName() == "Fuchsia City" then
                   moveToMap("Fuchsia Pokemart")
            elseif getMapName() == "Fuchsia Pokemart" and not isShopOpen() then
                    talkToNpcOnCell(3, 5)
            elseif isShopOpen() then
            log("----------------")
            log("--- Buying "..ballquantity.." Great Balls ---")
            log("----------------")
                    buyItem("Great Ball", ballquantity)
        elseif getMapName() ~= "Fuchsia City" then
            backtofarm()
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

    elseif moneyfarm and (getMoney() >= minmoney and getMoney() <= maxmoney)  then
        log("~~~ Grinding some pokedollars!!! ~~~")
        if cCave then
            ceCave()
        elseif sFoam then
            seafoam()
        end
            
    elseif ballSwitch and ( getItemQuantity("Great Ball") <= minball ) then

        ball()

    elseif sleepPP() and fswipePP() and isPokemonUsable(1) and isPokemonUsable(synchIndex2) and isPokemonUsable(synchIndex3) and isPokemonUsable(falseswiper) and getPokemonHealthPercent(falseswiper) > fswipeHP and getPokemonHealthPercent(sleeper) > sleeperHP and isPokemonUsable(sleeper) then
     
    if huntEeveeRhyhorn then
            
        area23()

    elseif huntEeveeBulba then
        
        area23()

    elseif huntEeveeChansey then
        
        area23()

    elseif huntEeveeScytherPinsir then
        
        area13()

    elseif huntEeveeUmbreon then
        
        areaex3()

    elseif huntStarlyUmbreon or huntScytherRhyhorn then
        
        exclusive()

    elseif huntEeveeMarill then
        
        areaex3()

    elseif huntEevee then
        
        areathree()

    elseif huntScyther then
        
        areaone()

    elseif huntPinsir then
            
        areaone()

    elseif huntBulba then
        
        areatwo()

    elseif huntChansey then
        
        areatwo()

    elseif huntRhyhorn then
        
        areatwo()

    elseif huntKanga then
        
        areaone()

    elseif huntChanseyBulba then
            
        areatwo()

    elseif huntDratiniStarlyUmbreon then
	
	if isMorning() and getPokemonNature(synch1) ~= nature1 then
            return swapPokemon(synch2, synch1)
        elseif isMorning() and getPokemonNature(synch1) == nature1 then

            exwater()

        end

	if isNoon() and getPokemonNature(synch1) ~= nature1 then
            return swapPokemon(synch2, synch1)
        elseif isNoon() and getPokemonNature(synch1) == nature1 then

            exclusive()

        end

        if isNight() and getPokemonNature(synch1) ~= nature2 then
            return swapPokemon(synch2, synch1)
        elseif isNight() and getPokemonNature(synch1) == nature2 then

            exclusive()

        end

    end

    else
        pc()
    end
    

end

function pc()
        if getMapName() == "Cerulean Cave 1F" then
            moveToMap("Cerulean City")
        elseif getMapName() == "Cerulean City" then    
            return moveToMap("Route 5") or moveToMap("Route 4")
        elseif getMapName() == "Route 4"  then    
            moveToCell(96, 21)
        elseif getMapName() == "Pokecenter Cerulean" then
            moveToMap("Cerulean City")
        elseif getMapName() == "Pokecenter Vermilion" or getMapName() == "Route 6" then
            moveToMap("Vermilion City")
        elseif getMapName() == "Vermilion City" then
            moveToMap("Route 11")
        elseif getMapName() == "Cerulean City" then
            moveToMap("Route 5")
        elseif getMapName() == "Route 5" then
            moveToMap("Route 5 Stop House")
        elseif getMapName() == "Route 5 Stop House" then
            moveToMap("Saffron City")
        elseif getMapName() == "Saffron City" then
            moveToMap("Route 6 Stop House")
        elseif getMapName() == "Route 6 Stop House" then
            moveToMap("Route 6")
        elseif getMapName() == "Cerulean Cave 1F" then
            moveToMap("Cerulean City")
        elseif ( getPlayerX() == 1 and getPlayerY() == 20 ) or ( getPlayerX() == 1 and getPlayerY() == 19 ) then
            moveToMap("Route 5")
        elseif getMapName() == "Cerulean City" then    
            return moveToMap("Route 4")
        elseif getMapName() == "Route 4"  then    
            moveToCell(96, 21)
        elseif getMapName() == "Route 11" then
            moveToMap("Route 11 Stop House")
        elseif getMapName() == "Route 11 Stop House" then
            moveToMap("Route 12")
        elseif getMapName() == "Route 12" then
            moveToCell(24, 92)
        elseif getMapName() == "Route 13" then
            moveToMap("Route 14")
        elseif getMapName() == "Route 14" then
            moveToMap("Route 15")
        elseif getMapName() == "Route 15" then
            moveToMap("Route 15 Stop House")
        elseif getMapName() == "Route 15 Stop House" then
            moveToMap("Fuchsia City")
        elseif getMapName() == "Seafoam B4F" then    
            moveToCell(9, 6)
        elseif getMapName() == "Seafoam B3F" then    
            moveToMap("Seafoam B2F")
        elseif getMapName() == "Seafoam B2F" then    
            moveToMap("Seafoam B1F")
        elseif getMapName() == "Seafoam B1F" then    
            moveToMap("Seafoam 1F")
        elseif getMapName() == "Seafoam 1F" then    
            moveToCell(13, 16)
        elseif getMapName() == "Route 20" then    
            moveToMap("Route 19")
        elseif getMapName() == "Route 19" then    
            moveToMap("Fuchsia City Stop House")
        elseif getMapName() == "Fuchsia City Stop House" then    
            moveToMap("Fuchsia City")
        elseif getMapName() == "Safari Exclusive" then
                    talkToNpcOnCell(21, 3)
        elseif getMapName() == "Safari Area 2" then
            moveToMap("Safari Area 1")
        elseif getMapName() == "Safari Area 3" then
            moveToMap("Safari Entrance")
        elseif getMapName() == "Safari Area 1" then
            moveToMap("Safari Entrance")
        elseif getMapName() == "Safari Entrance" then
            talkToNpcOnCell(27, 25)
        elseif getMapName() == "Safari Stop" then
            moveToMap("Fuchsia City")
        elseif getMapName() == "Fuchsia City" then
            moveToMap("Pokecenter Fuchsia")
            elseif getMapName() == "Pokecenter Fuchsia" then
            usePokecenter()
        end

end
function onBattleAction()

    if moneyfarm and (getMoney() <= minmoney or ((getMoney() - startingMoney) < moneyneeded)) then
        
            return attack() or sendAnyPokemon() or sendUsablePokemon() or run()
            
        
    elseif isOpponentShiny() or not isAlreadyCaught() or getOpponentName() == "Charmander" or getOpponentName() == "Squirtle" then
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
    elseif huntEeveeRhyhorn then
        if getOpponentName() == "Rhyhorn" then
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
        elseif getOpponentName() == "Eevee" then
            log("-------- Commencing Sleep Move --------")
            sleep()
        elseif huntandfarm then
            return attack() or sendAnyPokemon() or run() or sendUsablePokemon()
        else
            return run() or sendUsablePokemon() or attack() or sendAnyPokemon()
    
        end
    elseif huntEeveeBulba then
        if getOpponentName() == "Bulbasaur" then
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
        elseif getOpponentName() == "Eevee" then
            log("-------- Commencing Sleep Move --------")
            sleep()
        elseif huntandfarm then
            return attack() or sendAnyPokemon() or run() or sendUsablePokemon()
        else
            return run() or sendUsablePokemon() or attack() or sendAnyPokemon()
    
        end
    elseif huntEeveeChansey then
        if getOpponentName() == "Chansey" then
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
        elseif getOpponentName() == "Eevee" then
            log("-------- Commencing Sleep Move --------")
            sleep()
        elseif huntandfarm then
            return attack() or sendAnyPokemon() or run() or sendUsablePokemon()
        else
            return run() or sendUsablePokemon() or attack() or sendAnyPokemon()
    
        end
    elseif huntEeveeScytherPinsir then
        if getOpponentName() == "Scyther" or getOpponentName() == "Pinsir" then
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
        elseif getOpponentName() == "Eevee" then
            log("-------- Commencing Sleep Move --------")
            sleep()
        elseif huntandfarm then
            return attack() or sendAnyPokemon() or run() or sendUsablePokemon()
        else
            return run() or sendUsablePokemon() or attack() or sendAnyPokemon()
        
        end
    elseif huntEeveeUmbreon then
        if getOpponentName() == "Umbreon" then
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
        elseif getOpponentName() == "Eevee" then
            log("-------- Commencing Sleep Move --------")
            sleep()
        elseif huntandfarm then
            return attack() or sendAnyPokemon() or run() or sendUsablePokemon()
        else
            return run() or sendUsablePokemon() or attack() or sendAnyPokemon()
    
        end
    elseif huntStarlyUmbreon and ( getOpponentName() == "Starly" or getOpponentName() == "Umbreon" ) then
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
    elseif huntEeveeMarill then
        if getOpponentName() == "Marill" then
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
        elseif getOpponentName() == "Eevee" then
            log("-------- Commencing Sleep Move --------")
            sleep()
        elseif huntandfarm then
            return attack() or sendAnyPokemon() or run() or sendUsablePokemon()
        else
            return run() or sendUsablePokemon() or attack() or sendAnyPokemon()
    
        end    
    elseif huntEevee and getOpponentName() == "Eevee" then
            log("-------- Commencing Sleep Move --------")
            sleep()
    elseif huntScyther and getOpponentName() == "Scyther" then
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
    elseif huntPinsir and getOpponentName() == "Pinsir" then
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
    elseif huntBulba and getOpponentName() == "Bulbasaur" then
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
    elseif huntChansey and getOpponentName() == "Chansey" then
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
    elseif huntRhyhorn and getOpponentName() == "Rhyhorn" then
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
    elseif huntKanga and getOpponentName() == "Kangaskhan" then
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
    elseif huntChanseyBulba and ( getOpponentName() == "Chansey" or getOpponentName() == "Bulbasaur" ) then
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
    elseif huntScytherRhyhorn and ( getOpponentName() == "Scyther" or getOpponentName() == "Rhyhorn" ) then
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
    elseif huntDratiniStarlyUmbreon and ( getOpponentName() == "Dratini" or getOpponentName() == "Starly" or getOpponentName() == "Umbreon" ) then
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
	
    elseif huntandfarm then
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
function onBattleMessage(wild)
    
        if stringContains(wild, "A Wild SHINY ") then
        shinyCounter = shinyCounter + 1    
    
    elseif stringContains(wild, "You throw") then
        pokeballCounter = pokeballCounter + 1    
    
        elseif stringContains(wild, "Pokedollar(s)") then
                log("Info ~ Pokedollars earned: "..tostring(getMoney() - startingMoney).." (" ..tostring((getMoney() - startingMoney)/wildCounter).." average)")
    elseif wild == "A Wild [FF9900]Scyther[-] Attacks!" then
        scythercounter = scythercounter + 1
  
    elseif wild == "A Wild [FF9900]Pinsir[-] Attacks!" then
        pinsircounter = pinsircounter + 1
    
    elseif wild == "A Wild [FF9900]Eevee[-] Attacks!" then
        eeveecounter = eeveecounter + 1
    
    elseif wild == "A Wild [FF9900]Bulbasaur[-] Attacks!" then
        bulbacounter = bulbacounter + 1
    
    elseif wild == "A Wild [FF9900]Chansey[-] Attacks!" then
        chanseycounter = chanseycounter + 1

    elseif wild == "A Wild [FF9900]Rhyhorn[-] Attacks!" then
        rhycounter = rhycounter + 1

    elseif wild == "A Wild [FF9900]Kangaskhan[-] Attacks!" then
        kangascounter = kangascounter + 1
    
    elseif wild == "A Wild [FF9900]Umbreon[-] Attacks!" then
        umbreoncounter = umbreoncounter + 1

    elseif wild == "A Wild [FF9900]Starly[-] Attacks!" then
        starlycounter = starlycounter + 1
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
    log("|--------- Pokemon Caught Status ----------|")
    log(" ")
    
    if huntEeveeRhyhorn then
        log("Eevee Caught: " .. eeveecounter)
        log("Rhyhorn Caught: ".. rhycounter)
        
    elseif huntEeveeBulba then
        log("Eevee Caught: " .. eeveecounter)
        log("Bulbasaur Caught: " .. bulbacounter)
        
    elseif huntEeveeChansey then
        log("Eevee Caught: " .. eeveecounter)
        log("Chansey Caught: " .. chanseycounter)
        
    elseif huntEeveeScytherPinsir then
        log("Eevee Caught: " .. eeveecounter)
        log("Scyther Caught: " .. scythercounter)
        log("Pinsir Caught: " .. pinsircounter)
        
    elseif huntEeveeUmbreon then
        log("Eevee Caught: " .. eeveecounter)
        log("Umbreon Caught: " .. umbreoncounter)
        
    elseif huntStarlyUmbreon then
        log("Starly Caught: " .. starlycounter)
        log("Umbreon Caught: " .. umbreoncounter)
        
    elseif huntEeveeMarill then
        log("Eevee Caught: " .. eeveecounter)
        log("Marill Caught: " .. marillcounter)
        
    elseif huntEevee then
        log("Eevee Caught: " .. eeveecounter)
        
    elseif huntScyther then
        log("Scyther Caught: " .. scythercounter)
        
    elseif huntPinsir then
        log("Pinsir Caught: " .. pinsircounter)
        
    elseif huntBulba then
        log("Bulbasaur Caught: " .. bulbacounter)
        
    elseif huntChansey then
        log("Chansey Caught: " .. chanseycounter)
        
    elseif huntRhyhorn then
        log("Rhyhorn Caught: ".. rhycounter)
        
    elseif huntKanga then
        log("Kangaskhan Caught: " .. kangascounter)
        
    elseif huntChanseyBulba then
        log("Chansey Caught: " .. chanseycounter)
        log("Bulbasaur Caught: " .. bulbacounter)
    end
    
    log(" --------------------------------------------")
    log("Pokemons encountered: " .. wildCounter)
    log("-----------------------------------------------------------")
    log("Shinies Caught: " .. shinyCounter)
    log("Pokeball's used: " .. pokeballCounter)
    log("---------------------------------------------")
    log("|--------- Character Information ----------|")
    log(" ")
    log("Times in Pokecenter: " .. pokecenterCounter)
    if huntandfarm or moneyfarm then
         log("Pokedollars earned: "..tostring(getMoney() - startingMoney).." (" ..tostring((getMoney() - startingMoney)/wildCounter).." average)")
        log("-----------------------------------------------------------")
    end
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



function ceCave()


    if getUsablePokemonCount() > pokeNumber then

        if getMapName() == "Safari Exclusive" then
                    talkToNpcOnCell(21, 3)
        elseif getMapName() == "Safari Area 2" then
            moveToMap("Safari Area 1")
        elseif getMapName() == "Safari Area 3" then
            moveToMap("Safari Entrance")
        elseif getMapName() == "Safari Area 1" then
            moveToMap("Safari Entrance")
        elseif getMapName() == "Safari Entrance" then
            talkToNpcOnCell(27, 25)
        elseif getMapName() == "Pokecenter Cerulean" then
            moveToMap("Cerulean City")
        elseif (getPlayerX() == 26 and getPlayerY() == 31) or (getPlayerX() == 9 and getPlayerY() == 49) then
            moveToMap("Route 4")
        elseif getMapName() == "Route 6" then    
            moveToMap("Route 6 Stop House")
        elseif getMapName() == "Safari Stop" or getMapName() == "Pokecenter Fuchsia" then    
            moveToMap("Fuchsia City")
        elseif getMapName() == "Fuchsia City" then
            moveToMap("Route 15 Stop House")
        elseif getMapName() == "Route 15 Stop House" then    
            return moveToMap("Route 15")
        elseif getMapName() == "Route 15" then
            moveToMap("Route 14")
        elseif getMapName() == "Route 14" then    
            moveToMap("Route 13")
        elseif getMapName() == "Route 13" then    
            moveToMap("Route 12")
        elseif getMapName() == "Route 12" then    
            moveToMap("Route 11 Stop House")
        elseif getMapName() == "Route 11 Stop House" then    
            moveToMap("Route 11")
        elseif getMapName() == "Route 11" then
            moveToMap("Vermilion City")
        elseif getMapName() == "Pokecenter Vermilion" then    
            moveToMap("Vermilion City")
        elseif getMapName() == "Vermilion City" then    
            moveToMap("Route 6")
        elseif getMapName() == "Route 6 Stop House" then    
            moveToMap("Saffron City")
        elseif getMapName() == "Saffron City" then    
            moveToMap("Route 5 Stop House")
        elseif getMapName() == "Route 5 Stop House" then    
            moveToMap("Route 5")
        elseif getMapName() == "Route 5" then    
            moveToCell(14, 0)
        elseif getMapName() == "Fuchsia Pokemart" then
            moveToMap("Fuchsia City")
        elseif getMapName() == "Cerulean City" or getMapName() == "Route 4" then
            return  moveToMap("Cerulean Cave 1F") or moveToCell(96, 14)    
        elseif getMapName() == "Cerulean Cave 1F"  then    
            return moveNearExit("Cerulean City")
        end
    else
        if getMapName() == "Cerulean Cave 1F" then
            moveToMap("Cerulean City")
        elseif ( getPlayerX() == 1 and getPlayerY() == 20 ) then
            moveToCell(26, 30)
        elseif getMapName() == "Cerulean City" then    
            return moveToMap("Route 4")
        elseif getMapName() == "Route 4"  then    
            moveToCell(96, 21)
        elseif getMapName() == "Pokecenter Cerulean"  then    
                usePokecenter()
        end
    end
end

function seafoam()

    if getUsablePokemonCount() > pokeNumber then
        
        if getMapName() == "Safari Exclusive" then
                    talkToNpcOnCell(21, 3)
        elseif getMapName() == "Safari Area 2" then
            moveToMap("Safari Area 1")
        elseif getMapName() == "Safari Area 3" then
            moveToMap("Safari Entrance")
        elseif getMapName() == "Fuchsia Pokemart" then
            moveToMap("Fuchsia City")
        elseif getMapName() == "Safari Area 1" then
            moveToMap("Safari Entrance")
        elseif getMapName() == "Safari Entrance" then
            talkToNpcOnCell(27, 25)
        elseif getMapName() == "Safari Stop" then
            moveToMap("Fuchsia City")
        elseif getMapName() == "Pokecenter Fuchsia" then
            moveToMap("Fuchsia City")
        elseif getMapName() == "Fuchsia City" then
            moveToMap("Fuchsia City Stop House")
        elseif getMapName() == "Fuchsia City Stop House" then
            moveToMap("Route 19")
        elseif getMapName() == "Route 19" then    
            moveToMap("Route 20")
        elseif getMapName() == "Route 20" then    
            moveToCell(60, 32)
        elseif getMapName() == "Seafoam 1F" then    
            moveToMap("Seafoam B1F")
        elseif getMapName() == "Seafoam B1F" then    
            moveToMap("Seafoam B2F")
        elseif getMapName() == "Seafoam B2F" then    
            moveToMap("Seafoam B3F")
        elseif getMapName() == "Seafoam B3F" then    
            moveToCell(12, 8)
        elseif getMapName() == "Seafoam B4F" then
            moveToRectangle(9,15,13,20)
        end
            
    else
        
        if getMapName() == "Seafoam B4F" then    
            moveToCell(9, 6)
        elseif getMapName() == "Seafoam B3F" then    
            moveToMap("Seafoam B2F")
        elseif getMapName() == "Seafoam B2F" then    
            moveToMap("Seafoam B1F")
        elseif getMapName() == "Seafoam B1F" then    
            moveToMap("Seafoam 1F")
        elseif getMapName() == "Seafoam 1F" then    
            moveToCell(13, 16)
        elseif getMapName() == "Route 20" then    
            moveToMap("Route 19")
        elseif getMapName() == "Route 19" then    
            moveToMap("Fuchsia City Stop House")
        elseif getMapName() == "Fuchsia City Stop House" then    
            moveToMap("Fuchsia City")
        elseif getMapName() == "Fuchsia City" then    
            moveToMap("Pokecenter Fuchsia")
            elseif getMapName() == "Pokecenter Fuchsia" then
            usePokecenter()
        end

    end

end

function backtofarm()
    
        if getMapName() == "Cerulean Cave 1F" then
            moveToMap("Cerulean City")
        elseif getMapName() == "Cerulean City" then    
            return moveToMap("Route 5") or moveToMap("Route 4")
        elseif getMapName() == "Route 4"  then    
            moveToCell(96, 21)
        elseif getMapName() == "Pokecenter Cerulean" then
            moveToMap("Cerulean City")
        elseif getMapName() == "Pokecenter Vermilion" or getMapName() == "Route 6" then
            moveToMap("Vermilion City")
        elseif getMapName() == "Vermilion City" then
            moveToMap("Route 11")
        elseif getMapName() == "Cerulean City" then
            moveToMap("Route 5")
        elseif getMapName() == "Route 5" then
            moveToMap("Route 5 Stop House")
        elseif getMapName() == "Route 5 Stop House" then
            moveToMap("Saffron City")
        elseif getMapName() == "Saffron City" then
            moveToMap("Route 6 Stop House")
        elseif getMapName() == "Route 6 Stop House" then
            moveToMap("Route 6")
        elseif getMapName() == "Cerulean Cave 1F" then
            moveToMap("Cerulean City")
        elseif ( getPlayerX() == 1 and getPlayerY() == 20 ) or ( getPlayerX() == 1 and getPlayerY() == 19 ) then
            moveToMap("Route 5")
        elseif getMapName() == "Cerulean City" then    
            return moveToMap("Route 4")
        elseif getMapName() == "Route 4"  then    
            moveToCell(96, 21)
        elseif getMapName() == "Route 11" then
            moveToMap("Route 11 Stop House")
        elseif getMapName() == "Route 11 Stop House" then
            moveToMap("Route 12")
        elseif getMapName() == "Route 12" then
            moveToCell(24, 92)
        elseif getMapName() == "Route 13" then
            moveToMap("Route 14")
        elseif getMapName() == "Route 14" then
            moveToMap("Route 15")
        elseif getMapName() == "Route 15" then
            moveToMap("Route 15 Stop House")
        elseif getMapName() == "Route 15 Stop House" then
            moveToMap("Fuchsia City")
        elseif getMapName() == "Seafoam B4F" then    
            return moveToCell(9, 6)
        elseif getMapName() == "Seafoam B3F" then    
            moveToMap("Seafoam B2F")
        elseif getMapName() == "Seafoam B2F" then    
            moveToMap("Seafoam B1F")
        elseif getMapName() == "Seafoam B1F" then    
            moveToMap("Seafoam 1F")
        elseif getMapName() == "Seafoam 1F" then    
            moveToCell(13, 16)
        elseif getMapName() == "Route 20" then    
            moveToMap("Route 19")
        elseif getMapName() == "Route 19" then    
            moveToMap("Fuchsia City Stop House")
        elseif getMapName() == "Fuchsia City Stop House" then    
            moveToMap("Fuchsia City")
        elseif getMapName() == "Fuchsia Pokemart" then
            moveToMap("Fuchsia City")
        end
end
