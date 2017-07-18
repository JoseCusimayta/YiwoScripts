name = "Script para Atrapar y Subir de nivel en cualquier lugar"
author = "Yiwo"

description = [[ A disfrutar del Script!! \(+o+)/!!! ]]

  Pathfinder        = require "ProShinePathfinder/Pathfinder/MoveToApp"
KeepMoves           = {"False Swipe", "Earthquake", "Double-Edge", "Ice Fang", "Thunder Fang", "Fire Fang", "Play Rough", 
                    "Bite", "Covet", "Ice Punch", "Thunder Punch", "Fire Punch", "Sky Uppercut", "Wing Attack" ,
                    "Thunder", "Horn Attack", "Poison Jab", "Bone Rush", "Thrash", "Surf",
                    "Cut", "Rock Smash", "Headbutt", "Aerial Ace", "Dig", "Toxic Spikes", "Pin Missile", "Twineedle",
                    "Leech Seed" ,"Crunch","Inferno","Take Down","Air Cutter","Poison Fang",
                    "Mud Bomb", "Petal Dance","Giga Drain","Leaf Blade","Night Slash","X-Scissor","Retaliate","Bonemerang",
                    "Sludge Bomb", "Gyro Ball","Rollout","Horn Attack","False Swipe","Mirror Shot","Aqua Ring","Metal Sound",
                    "Magnitude","Magical Leaf","Hydropump","Petal Dance","Toxic";"Slash","Brine","ThunderBolt","Hurricane",
                    "Mirror Move","Air Slash"}

  PokemonList       = {"Squirtle","Charmander","Budew","Magmar","Treecko","Bulbasaur","Kangaskhan","Chansey",
                                "Tangela","Chikorita","Turtwig","Sewaddle","Fletchling","Trevenant","Pansage","Surskit",
                                "Cyndaquil","Lapras","Totodile","Feebas"} --Lista de Pokemon a Capturar

   PokemonListCatch         ={"Lista de Pokemon Capturados"}
   canChange                =true
   PokemonIndexFalseSwipe   = 0
   PokemonIndexNature       = 0
   PokemonIndexCovet		= 0
   isVulpixHA               =false
   PokemonCatched           =0
   PokemonTarget			= "Pikachu"
   CatchPokemon				=false
 ------------------------------------------------------------------------
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------------------------- Funciones generales -------------------------
function BattleMessageLog(message)
	 canChange=true
    if stringContains(message, "The sunlight got bright!") then
        isVulpixHA=true
    end
    if stringContains(message, "You can not switch this Pokemon!") or stringContains(message, "You can not run away!")  then
        canChange = false
    end    
    if stringContains(message, "Success!") then
        PokemonCatched=PokemonCatched+1
        log("... Se ha(n) atrapado " .. PokemonCatched.. " Pokemon " )
        if TableDataAdd(PokemonListCatch) then 
            table.insert(PokemonListCatch,getOpponentName())  
        end
    end
end

function CatcherLog()
    log("....................")
    log("... Buscando pokemon a capturar en la zona: "..TargetMap)
    log("... Cantidad de Pokeballs: "..getItemQuantity("Pokeball"))
    log("... Cantidad de Pokemon capturados: "..PokemonCatched)
    log("...")
    TableDataRead(PokemonListCatch)
    log("....................")
end

function  LevelerLog()
    log("....................")
    log("... Subiendo Pokemon al nivel: "..TargetLvl)
    log("....................")
end

function ShareExpLog()
    log("....................")
    log("... Subiendo de nivel con Experiencia Compartida")
    log("....................")
end

function  EvTrainLog()
   log("....................")
    log("... Entrenando EV... ")
    log("....................")
    for i=1,6 do
        log(ListEV[i]..": "..getPokemonEffortValue(1,ListEV[i]))
    end
    log("....................")
end

function TableLength(table)
  count = 0
  for _ in pairs(table) do count = count + 1 end
  return count
end

function TableDataRead(table)
    for i=1,TableLength(table) do
        log(table[i])
    end
end

function TableDataAdd(table)
    DataAdd=false
    if table[1]~="" then    
        for i=1, TableLength(table)  do
            if getOpponentName()==table[i] then
                DataAdd= false
                break
            else
                DataAdd=true
            end
        end
    else
        DataAdd= true
    end
    return DataAdd
end

function  CanAttack(pokemonIndex)
    if(getPokemonHealthPercent(pokemonIndex)>=HPtoRetreat) then
        for i=1,4 do
            moveName=getPokemonMoveName(pokemonIndex, i)
            if(moveName) then
                if moveName ~= "False Swipe" and moveName ~= "Double-Edge"
                    and getPokemonMovePower(pokemonIndex,i)>1 and getRemainingPowerPoints(pokemonIndex, moveName) >0 then
                    return true
                end
            end
        end
    end
end

function findPokemonWithFalseSwipe()
    for pokemon=1,getTeamSize() do
        for move=1,4 do
            if getPokemonMoveName(pokemon,move)=="False Swipe" then
                PokemonIndexFalseSwipe=pokemon
                return true
            end
        end
    end
end
function findPokemonWithCovet()
	for pokemon=1,getTeamSize() do
        for move=1,4 do
            if getPokemonMoveName(pokemon,move)=="Covet" then
                PokemonIndexCovet=pokemon
                return true
            end
        end
    end
end

function CanUseCovet(pokemonIndex)
    if getPokemonHealthPercent(pokemonIndex)>=HPtoRetreat then
        for i=1,4 do
            moveName=getPokemonMoveName(pokemonIndex,i)
            if moveName == "Covet" and getRemainingPowerPoints(pokemonIndex, moveName)>0 then
                return true
            end
        end
    end
end

function findPokemonWithNature()
    for i=1,getTeamSize() do
        if(getPokemonNature(i)==NatureTarget and 
            (getPokemonName(i)=="Abra" or getPokemonName(i)=="Kadabra" or getPokemonName(i)=="Alakazam")) then
            PokemonIndexNature=i
            return true
        end
    end
end

function CanUseFalseSwipe(pokemonIndex)
    if getPokemonHealthPercent(pokemonIndex)>=HPtoRetreat then
        for i=1,4 do
            moveName=getPokemonMoveName(pokemonIndex,i)
            if moveName == "False Swipe" and getRemainingPowerPoints(pokemonIndex, moveName)>0 then
                return true
            end
        end
    end
end

function HavePokeballs()
    if getItemQuantity("Pokeball")>0 or getItemQuantity("Super Ball")>0 or getItemQuantity("Ultra Ball")>0 then
        return true
    end
end

function ChangePokeonWithFalseSwipe()
    swapPokemon(1, PokemonIndexFalseSwipe)
    for pokemon=1,getTeamSize() do
        for move=1,4 do
            if getPokemonMoveName(pokemon,move)=="False Swipe" then
               swapPokemon(1,pokemon)               
            end
        end
    end
end

function isCaptureList()
    if PokemonList[1]~="" then    
        for i=1, TableLength(PokemonList)  do
            if getOpponentName()==PokemonList[i] then
                return true
            end
        end
    end
end

function ChangeLeader()
    if getTeamSize()>2 then
        for i=1,getTeamSize() do
            if getPokemonLevel(i)<TargetLvl and CanAttack(i) then
                log("... Cambiando al Pokemon ".. i)
                return swapPokemon(1, i)
            end
        end
    end
end

function  CanLevelUp()
    isAll=0;
    for i=1,getTeamSize() do
        if getPokemonLevel(i)>=TargetLvl then
            isAll=isAll+1
        end
    end
    if isAll < getTeamSize() then
        return true
    end
end

function  CanLookFor()
    if getTeamSize()>2 then
        for i=1,getTeamSize()-1 do
            if CanAttack(i) then
                return true
            end
        end
    else
        for i=1,getTeamSize() do
            if CanAttack(i) then
                return true
            end
        end
    end
end
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------- Funciones para Capturar ---------

function SimpleCatchPath()
    if HavePokeballs() and TableLength(PokemonList)>0  then
        if CanLookFor() then
            if(getMapName()==TargetMap) then 
                if HuntType=="Rect" then
                    return moveToRectangle(Coordenadas)
                elseif HuntType=="Grass" then
                    return moveToGrass()
                elseif HuntType=="Water" then
                    return moveToWater()
                end
            else
                log("... Buscando: "..TargetMap)
                return Pathfinder.moveTo(getMapName(), TargetMap)
            end  
        else
            log("... Buscando Pokecenter en: "..getMapName())
            return Pathfinder.useNearestPokecenter(getMapName())
        end
    else
        log("... No se puede ejecutar el Bot de Capturar")
        return fatal("... Verificar la cantidad de Pokeballs o la lista de Pokemon a atrapar")
    end
end

function CatchFalseSwipePath()
    if HavePokeballs() and TableLength(PokemonList)>0 and findPokemonWithFalseSwipe() then        
        if CanLookFor() and CanUseFalseSwipe(PokemonIndexFalseSwipe) then
            if(getMapName()==TargetMap) then 
                if HuntType=="Rect" then
                    return moveToRectangle(Coordenadas)
                elseif HuntType=="Grass" then
                    return moveToGrass()
                elseif HuntType=="Water" then
                    return moveToWater()
                end
            else
                log("... Buscando: "..TargetMap)
                return Pathfinder.moveTo(getMapName(), TargetMap)
            end  
        else
            log("... Buscando Pokecenter en: "..getMapName())
            return Pathfinder.useNearestPokecenter(getMapName())
        end
    else
        log("... No se puede ejecutar el Bot de Capturar con False Swipe")
        return fatal("... Verificar la cantidad de Pokeballs, la lista de Pokemon a atrapar o si hay un Pokemon con FalseSwipe en el equipo")
    end
end

function CatchSyncFalseSwipePath()
    if(HavePokeballs() and TableLength(PokemonList)>0 and findPokemonWithFalseSwipe() and findPokemonWithNature()) then        
        if CanLookFor() and CanUseFalseSwipe(PokemonIndexFalseSwipe) and  CanAttack(PokemonIndexNature) then
            if(PokemonIndexNature==1) then
                if(getMapName()==TargetMap) then 
                    if HuntType=="Rect" then
                        return moveToRectangle(Coordenadas)
                    elseif HuntType=="Grass" then
                        return moveToGrass()
                    elseif HuntType=="Water" then
                        return moveToWater()
                    end
                else
                    log("... Buscando: "..TargetMap)
                    return Pathfinder.moveTo(getMapName(), TargetMap)
                end  
            else
                return swapPokemon(1, PokemonIndexNature)
            end
        else
            log("... Buscando Pokecenter en: "..getMapName())
            return Pathfinder.useNearestPokecenter(getMapName())
        end
    else
         log("... No se puede ejecutar el Bot de Capturar con False Swipe y Sync")
        return fatal("... Verificar la cantidad de Pokeballs, la lista de Pokemon a atrapar o si hay un Pokemon con FalseSwipe en el equipo o si la naturaleza a buscar es la correcta")
    end
end
----------------------------------------------------Funciones en combate------------------------------------------------
function SimpleCatch()
    if HavePokeballs() and (isOpponentShiny() or isCaptureList()) then
        return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendAnyPokemon() or run()
    elseif not (canChange and CanAttack(1)) then
        return fatal("No se puede escapar ni atacar")
    elseif CanAttack(1) and not canChange then
        return attack()
    else
        return run()
    end
end

function SimpleCatchFalseSwipe()
    if HavePokeballs() and (isOpponentShiny() or isCaptureList()) then
        if getActivePokemonNumber()~=PokemonIndexFalseSwipe and CanUseFalseSwipe(PokemonIndexFalseSwipe) and canChange then
            return sendPokemon(PokemonIndexFalseSwipe)
        elseif getOpponentHealthPercent()>=PokemonHPCatch and CanUseFalseSwipe(PokemonIndexFalseSwipe) then
            return weakAttack()
        else
            return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or sendAnyPokemon() or run()
        end
    elseif not (canChange and CanAttack(1)) then
        return fatal("No se puede escapar ni atacar")
    elseif CanAttack(1) and not canChange then
        return attack()
    else
        return run()
    end
end

function CatchLeveler()
    if HavePokeballs() and (isOpponentShiny() or isCaptureList()) then
        return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendAnyPokemon() or run()
    elseif not (canChange and CanAttack(1)) then
        return fatal("No se puede escapar ni atacar")
    elseif CanAttack(1) and not canChange then
        return attack()
    else
        return attack() or sendUsablePokemon() or sendAnyPokemon() or run()
    end
end

function CatchFalseSwipeLeveler()
    if HavePokeballs() and (isOpponentShiny() or isCaptureList()) then
        if getActivePokemonNumber()~=PokemonIndexFalseSwipe and CanUseFalseSwipe(PokemonIndexFalseSwipe) and canChange then
            return sendPokemon(PokemonIndexFalseSwipe)
        elseif getOpponentHealthPercent()>=PokemonHPCatch and CanUseFalseSwipe(PokemonIndexFalseSwipe) then
            return weakAttack()
        else
            return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or sendAnyPokemon() or run()
        end
    elseif not (canChange and CanAttack(1)) then
        return fatal("No se puede escapar ni atacar")
    elseif CanAttack(1) and not canChange then
        return attack()
    else
        return attack() or sendUsablePokemon() or sendAnyPokemon() or run()
    end
end
-------------------------------------------------------------------------
-------------------------------------------------------------------------
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------- Funciones para subir de nivel ---------

function LevelerPath()
    if CanLevelUp() then
        if CanAttack(1) and getPokemonLevel(1)<TargetLvl and CanLookFor() then
            if getMapName()==TargetMap then
                if HuntType=="Rect" then
                    moveToRectangle(Coordenadas)
                elseif HuntType=="Grass" then
                    moveToGrass()
                elseif HuntType=="Water" then
                    moveToWater()
                end
            else
                log("... Buscando: "..TargetMap)
                return Pathfinder.moveTo(getMapName(), TargetMap)
            end  
        elseif ChangeLeader() then
             log("... Pokemon Cambiado, volviendo a buscar")
        else
            log("... Buscando Pokecenter en: "..getMapName())
            return Pathfinder.useNearestPokecenter(getMapName())
        end      
    else  
        return fatal("... Todos los Pokemon alcanzaron el Nivel Objetivo: "..TargetLvl)
    end
end

function Leveler()
    if isOpponentShiny() and HavePokeballs() and (isCaptureList() or CatchPokemon) then
        return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendAnyPokemon() or run()
    elseif not (canChange and CanAttack(1)) then
        return attack() or sendAnyPokemon() or  fatal("No se puede escapar ni atacar")
    elseif CanAttack(getActivePokemonNumber()) then
        return attack() or sendAnyPokemon()
    else
        return run()or sendAnyPokemon()
    end
end

-------------------------------------------------------------------------
-------------------------------------------------------------------------
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------- Funciones para Repartir Experiencia---------
function ShareExpPath()
    if(CanAttack(PokemonSwap) and getPokemonHealthPercent(1)>HPtoRetreat) then
        if getMapName()==TargetMap then
            if HuntType=="Rect" then
                return moveToRectangle(Coordenadas)
            elseif HuntType=="Grass" then
                return moveToGrass()
            elseif HuntType=="Water" then
                return moveToWater()
            end
        else
            log("... Buscando: "..TargetMap)
            return Pathfinder.moveTo(getMapName(), TargetMap)
        end  
    else
        log("... Buscando Pokecenter en: "..getMapName())
        return Pathfinder.useNearestPokecenter(getMapName())
    end
end

function ShareExp()
    if isOpponentShiny() and HavePokeballs() or (isCaptureList() and CatchPokemon)then
        return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or sendUsablePokemon() or sendAnyPokemon() or run()
    elseif not (canChange and CanAttack(1)) then
        return fatal("No se puede atacar ni cambiar de pokemon")
    elseif getActivePokemonNumber()~=PokemonSwap and canChange then
        return sendPokemon(PokemonSwap)
    else
        return attack() or sendUsablePokemon() or sendAnyPokemon() or run()
    end
end
-------------------------------------------------------------------------
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------------------------- Funciones para entrenar EV ------------------
function CanTrainEV()
    for i=1,6 do
        if getPokemonEffortValue(1,ListEV[i])<AmmountEV[i] then
            return true
        end
    end 
end

function isCorrectEV()
    for i=1,6 do
        if isOpponentEffortValue(ListEV[i]) and getPokemonEffortValue(1,ListEV[i])<AmmountEV[i] then
            return true
        end
    end
end

function TrainEVPath()
    if CanTrainEV() then
        if CanAttack(1) then
            if getMapName()==TargetMap then
                if HuntType=="Rect" then
                    return moveToRectangle(Coordenadas)
                elseif HuntType=="Grass" then
                    return moveToGrass()
                elseif HuntType=="Water" then
                    return moveToWater()
                end
            else
                log("... Buscando: "..TargetMap)
                return Pathfinder.moveTo(getMapName(), TargetMap)
            end  
        else
            log("... Buscando Pokecenter en: "..getMapName())
            return Pathfinder.useNearestPokecenter(getMapName())
        end
    else
        return fatal("... Entrenamiento EV ha terminado")
    end
end

function TrainEV()

    if(isOpponentShiny() and HavePokeballs() and (isCaptureList() or CatchPokemon) ) then
        return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or sendUsablePokemon() or sendAnyPokemon() or run()
 	elseif isCorrectEV() and CanAttack(1) then
        return attack()
    elseif canChange then
        return run() or attack() or sendUsablePokemon() or sendAnyPokemon() 
    elseif CanAttack(1) then
        return attack()
    elseif not (canChange and attack()) then
        return attack() or fatal("No se puede atacar ni cambiar de pokemon ni huir")  
    end
end


-------------------------------------------------------------------------
-------------------------------------------------------------------------
-------------------------------------------------------------------------
---------------------------Vulpix Catch--------------------------------

function VulpixHA() 
    if(isVulpixHA) then
        if findPokemonWithFalseSwipe() then
            if FalseSwipeUsable() then
                if getOpponentHealthPercent()>PokemonHPCatch then
                    if getActivePokemonNumber()== PokemonIndexFalseSwipe then
                        return weakAttack()
                    else
                        return sendPokemon(PokemonIndexFalseSwipe)
                    end
                else
                    return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendUsablePokemon() or sendAnyPokemon() or run() or attack()
                end
            else
                return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendUsablePokemon() or sendAnyPokemon() or run() or attack()
            end
        else
            return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendUsablePokemon() or sendAnyPokemon() or run() or attack()
        end
    else        
        Leveler()
    end
end
-------------------------------------------------------------------------
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------------------------- Conseguir Items -----------------------------

function CovetItemsPath()
	if findPokemonWithCovet() then
		if PokemonIndexCovet==1 then
			if CanAttack(1) then
	            if getMapName()==TargetMap then
	                if HuntType=="Rect" then
	                    return moveToRectangle(Coordenadas)
	                elseif HuntType=="Grass" then
	                    return moveToGrass()
	                elseif HuntType=="Water" then
	                    return moveToWater()
	                end
	            else
	                log("... Buscando: "..TargetMap)
	                return Pathfinder.moveTo(getMapName(), TargetMap)
	            end  
	        else
	            log("... Buscando Pokecenter en: "..getMapName())
	            return Pathfinder.useNearestPokecenter(getMapName())
	        end
		else
			swapPokemon(1, PokemonIndexCovet)
		end
	else
		return fatal("No se ha podido encontrar Pokemon con Covet")
	end
end

function CovetItems()

 	if(isOpponentShiny() and HavePokeballs() or (CatchPokemon and isCaptureList())) then
        return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball") or sendUsablePokemon() or sendAnyPokemon() or run()
 	elseif findPokemonWithCovet() and getActivePokemonNumber()==PokemonIndexCovet and CanUseCovet(PokemonIndexCovet) and getOpponentName()==PokemonTarget then
 		return useMove("Covet")
	elseif canChange then
		return run()
    elseif CanAttack(1) then
    	return attack()
    else
        return fatal("No se puede atacar ni cambiar de pokemon ni huir")  
    end
end
-------------------------------------------------------------------------
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------- Aprender u olvidar movimientos---------
function onLearningMove(moveName, pokemonIndex)
    log("... "..getPokemonName(pokemonIndex).." está aprendiendo un nuevo movimiento: "..moveName)
    forgetAnyMoveExcept(KeepMoves)
end
-------------------------------------------------------------------------