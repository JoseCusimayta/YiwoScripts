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


