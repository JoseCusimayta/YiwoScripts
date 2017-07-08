name = "Script para Atrapar y Subir de nivel en cualquier lugar"
author = "Yiwo"

description = [[ A disfrutar del Script!! \(+o+)/!!! ]]

  Pathfinder        = require "ProShinePathfinder/Pathfinder/MoveToApp"
TargetMap         = "Mt. Silver Lower Mountainside"  --Map where to catch or train
  ScriptType        = "Leveler" --Catcher (Atrapar Pokemon) Leveler (Sube de nivel a todos los pokemon) ShareExp (Sube de nivel al primero pokemon usando compartir experiencia)
HuntType          = "Grass" --Grass (busca en la hierba), Water (busca en el agua), Rect (Busca en las coordenadas)
Coordenadas       = {1,14,11,20} --Coordenadas a cazar: minX, minY, maxX, maxY
  HPtoRetreat       = 20    --EL porcentaje de vida para regresar al Centro Pokemon
KeepMoves           = {"False Swipe", "Earthquake", "Double-Edge", "Ice Fang", "Thunder Fang", "Fire Fang", "Play Rough", 
                    "Bite", "Covet", "Low Kick", "Quick Attack", "Ice Punch", "Thunder Punch", "Fire Punch", "Sky Uppercut", 
                    "Thunderbolt", "Thunder", "Thrash", "Horn Attack", "Poison Jab", "Bone Rush", "Thrash", "Surf",
                    "Cut", "Rock Smash", "Headbutt","Aerial Ace", "Dig", "Toxic Spikes", "Pin Missile", "Twineedle",
                    "Leech Seed","Wing Attack" ,"Crunch","Inferno","Take Down","Air Cutter","Poison Fang",
                    "Mud Bomb", "Petal Dance","Giga Drain","Leaf Blade","Night Slash","X-Scissor","Retaliate","Bonemerang",
                    "Sludge Bomb", "Gyro Ball","Rollout","Horn Attack","False Swipe","Mirror Shot","Aqua Ring","Metal Sound","Electro Ball",
                    "Thundershock"}
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------- Configuración para Leveler ---------
  TargetLvl       	= 100 -- Hasta que nivel se desea subir
  -------------------------------------------------------------------------
-------------------------------------------------------------------------
--------- Configuración para ShareExp ---------
PokemonSwap         = 2
-------------------------------------------------------------------------	
-------------------------------------------------------------------------
--------- Configuración para Catcher ---------
  PokemonList     	= {"Squirtle","Charmander","Budew","Magmar","Treecko","Bulbasaur","Kangaskhan","Chansey",
                                "Tangela","Chikorita","Turtwig","Sewaddle","Fletchling","Trevenant","Pansage","Surskit",
                                "Cyndaquil","Lapras","Totodile","Feebas","Mankey"} --Lista de Pokemon a Capturar
  PokemonHPCatch   	= 50   --Cantidad de vida para atrapar
  PokemonCatched   	= 0   --Cantidad de Pokemon atrapados
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------- Configuración para TrainEV ---------
  ListEV           	= {"Attack", "Defense", "SpAttack","SpDefense","Speed","HP"}
  AmmountEV        	= {250,0,0,0,211,0}
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------- Configuración para CatchSyncFalseSwipe ---------
  NatureTarget		="Timid"
-------------------------------------------------------------------------
-------------------------------------------------------------------------
-------------------------------------------------------------------------
-------------------------------------------------------------------------

-------------------------------------------------------------------------
--------------------------- Funciones del juego -------------------------
-------------- Variables a no tocar -------------------------------------
   PokemonListCatch    		={"Lista de Pokemon Capturados"}
   canChange		  		=true
   PokemonIndexFalseSwipe  	= 0
   PokemonIndexNature		= 0
   isVulpixHA               =false
 ------------------------------------------------------------------------
function onStart()
	ReporteScriptType()
end

function onStop()
	ReporteScriptType()
end

function onPause()
	ReporteScriptType()
end

function onPathAction()   
    if (ScriptType=="Catcher") then    
    	CatcherPath()
    elseif (ScriptType=="OnlyCatch")then
        CatcherPath()
    elseif (ScriptType=="CatchSyncFalseSwipe") then
    	CatchSyncFalseSwipePath()
    elseif (ScriptType=="Leveler") then
        LevelerPath()
    elseif (ScriptType=="ShareExp") then
        ShareExpPath()
    elseif (ScriptType=="TrainEV") then
        TrainEVPath()
    else
        fatal("... Error de ScriptType: "..ScriptType)
    end
end

function onBattleAction()
    if (ScriptType=="Catcher") then
        Catcher()
    elseif (ScriptType=="OnlyCatch") then
        OnlyCatch()
    elseif (ScriptType=="CatchSyncFalseSwipe") then
    	CatchSyncFalseSwipe()
    elseif (ScriptType=="Leveler") then
        Leveler()        
    elseif (ScriptType=="ShareExp") then
        ShareExp() 
    elseif (ScriptType=="TrainEV") then
        TrainEV()
    else
       fatal("... Error de ScriptType: "..ScriptType)
    end
end

function onBattleMessage(message)   
    if stringContains(message, "The sunlight got bright!") then
        PokemonCatched=PokemonCatched+1
        isVulpixHA=true
    end
	if stringContains(message, "You can not switch this Pokemon!") then
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
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------------------------- Funciones generales -------------------------
function BattleMessageLog(message)
    if stringContains(message, "The sunlight got bright!") then
        isVulpixHA=true
    end
    if stringContains(message, "You can not switch this Pokemon!") then
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
	log("... Buscando pokemon a capturar en la zona: "..TargetMap.." ... Con "..getItemQuantity("itemName"))
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

function ReporteScriptType()
    if(ScriptType=="Catcher") then
    	log("....................")
    	log("... ScriptType: "..ScriptType)
    	log("... Buscando pokemon a capturar en la zona: "..TargetMap)
        log("... Cantidad de Pokeballs: "..getItemQuantity("Pokeball"))
        log("... Cantidad de Pokemon capturados: "..PokemonCatched)
        log("...")
        TableDataRead(PokemonListCatch)
        log("....................")
    elseif(ScriptType=="Leveler") then
    	log("....................")
    	log("... ScriptType: "..ScriptType)
        log("... Subiendo Pokemon al nivel: "..TargetLvl)
        log("....................")
    elseif(ScriptType=="ShareExp") then
    	log("....................")
    	log("... ScriptType: "..ScriptType)
        log("... Subiendo de nivel con Experiencia Compartida")
        log("....................")
    elseif(ScriptType=="OnlyCatch") then
    	log("....................")
    	log("... ScriptType: "..ScriptType)
    	log("... Buscando pokemon a capturar en la zona: "..TargetMap)
        log("... Cantidad de Pokeballs: "..getItemQuantity("Pokeball"))
        log("... Cantidad de Pokemon capturados: "..PokemonCatched)
        log("...")
        TableDataRead(PokemonListCatch)
        log("....................")
    elseif(ScriptType=="TrainEV") then
    	log("....................")
    	log("... ScriptType: "..ScriptType)
        log("... Entrenando EV... ")
        log("....................")
        for i=1,6 do
            log(ListEV[i]..": "..getPokemonEffortValue(1,ListEV[i]))
        end
        log("....................")
    elseif(ScriptType=="CatchSyncFalseSwipe") then
    	log("....................")
    	log("... ScriptType: "..ScriptType)
    	log("... Buscando pokemon a capturar en la zona: "..TargetMap)
        log("... Cantidad de Pokeballs: "..getItemQuantity("Pokeball"))
        log("... Cantidad de Pokemon capturados: "..PokemonCatched)
        log("...")
        TableDataRead(PokemonListCatch)
        log("....................")
    else
    	fatal("... Error de ScriptType: "..ScriptType)
    end
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
    _canAttack=false
    if(getPokemonHealthPercent(pokemonIndex)>=HPtoRetreat) then
        for i=1,4 do
            moveName=getPokemonMoveName(pokemonIndex, i)
            if(moveName) then
	            if moveName ~= "False Swipe" and moveName ~= "Double-Edge"
                    and getPokemonMovePower(pokemonIndex,i)>1 and getRemainingPowerPoints(pokemonIndex, moveName) >0 then
	                _canAttack=true
	                break   
	            end
	        end
        end
    end
    return _canAttack
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
    FalseSwipeUsable=false
    if getPokemonHealthPercent(pokemonIndex)>=HPtoRetreat then
        for i=1,4 do
            moveName=getPokemonMoveName(pokemonIndex,i)
            if moveName == "False Swipe" and getRemainingPowerPoints(pokemonIndex, moveName)>0 then
                FalseSwipeUsable=true
                break
            end
        end
    end
    return FalseSwipeUsable
end

function HavePokeballs()
    if getItemQuantity("Pokeball")>0 or getItemQuantity("Super Ball")>0 or getItemQuantity("Ultra Ball")>0 then
        return true
    else
        return false
    end
end
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------- Funciones para cazar Pokemon con False Swipe---------

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
    isOnList=false
    if PokemonList[1]~="" then    
        for i=1, TableLength(PokemonList)  do
                if getOpponentName()==PokemonList[i] then
                    isOnList= true
                    break
                end
            end
    else
        isOnList= false
    end
    return isOnList
end

function CatcherPath()
    if HavePokeballs() and TableLength(PokemonList)>0 and findPokemonWithFalseSwipe() then
        if(CanUseFalseSwipe(PokemonIndexFalseSwipe) and getUsablePokemonCount()>2) then
            if(getMapName()==TargetMap) then 
                if HuntType=="Rect" then
                    moveToRectangle(Coordenadas)
                elseif HuntType=="Grass" then
                    moveToGrass()
                elseif HuntType=="Water" then
                    moveToWater()
                end
            else
                log("... Buscando: "..TargetMap)
                Pathfinder.moveTo(getMapName(), TargetMap)
           end  
        else
            log("... Buscando Pokecenter en: "..getMapName())
            Pathfinder.useNearestPokecenter(getMapName())
        end
    else
        log("... No se puede ejecutar el Bot de Capturar con False Swipe")
        return fatal("... Verificar la cantidad de Pokeballs, la lista de Pokemon a atrapar o si hay un Pokemon con FalseSwipe en el equipo")
    end
end

function Catcher()
    if HavePokeballs() then
        if(isOpponentShiny() or not isAlreadyCaught() or isCaptureList()) then
            if getActivePokemonNumber()~=PokemonIndexFalseSwipe and CanUseFalseSwipe(PokemonIndexFalseSwipe) and canChange then
                return sendPokemon(PokemonIndexFalseSwipe)
            elseif getOpponentHealthPercent()>=PokemonHPCatch and CanUseFalseSwipe(PokemonIndexFalseSwipe) then
                return weakAttack() or sendUsablePokemon() or run()
            else
                return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendUsablePokemon() or run()
            end
        elseif not canChange and not canAttack(1) then
            return fatal("No se puede escapar ni atacar")
        elseif getActivePokemonNumber()==PokemonIndexFalseSwipe then
            return run() or sendUsablePokemon()
        else
            return attack() or sendUsablePokemon() or run()
        end            
    else
        log("... No hay suficientes Pokeballs")
        return attack() or sendUsablePokemon() or run()
    end
end
-------------------------------------------------------------------------
-------------------------------------------------------------------------
-------Funciones para capturar Pokemon con Sync y False Swipe------------
function CatchSyncFalseSwipePath()
    if(HavePokeballs() and TableLength(PokemonList)>0 and findPokemonWithFalseSwipe() and findPokemonWithNature()) then
        if CanUseFalseSwipe(PokemonIndexFalseSwipe) and getPokemonHealthPercent(PokemonIndexFalseSwipe)>HPtoRetreat and getPokemonHealthPercent(PokemonIndexNature)>HPtoRetreat and getUsablePokemonCount()>2 then
            if(PokemonIndexNature==1) then
                if(getMapName()==TargetMap) then 
                    if HuntType=="Rect" then
                        moveToRectangle(Coordenadas)
                    elseif HuntType=="Grass" then
                        moveToGrass()
                    elseif HuntType=="Water" then
                        moveToWater()
                    end
                else
                    log("... Buscando: "..TargetMap)
                    Pathfinder.moveTo(getMapName(), TargetMap)
               end  
            else
                swapPokemon(1, PokemonIndexNature)
            end
        else
            log("... Buscando Pokecenter en: "..getMapName())
            Pathfinder.useNearestPokecenter(getMapName())
        end
    else
         log("... No se puede ejecutar el Bot de Capturar con False Swipe y Sync")
        return fatal("... Verificar la cantidad de Pokeballs, la lista de Pokemon a atrapar o si hay un Pokemon con FalseSwipe en el equipo o si la naturaleza a buscar es la correcta")
    end
end
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------- Funciones para Solo cazar con False Swipe---------
function OnlyCatch()
    if HavePokeballs() then
        if(isOpponentShiny() or not isAlreadyCaught() or isCaptureList()) then
            if getActivePokemonNumber()~=PokemonIndexFalseSwipe and CanUseFalseSwipe(PokemonIndexFalseSwipe) and canChange then
                return sendPokemon(PokemonIndexFalseSwipe)
            elseif getOpponentHealthPercent()>=PokemonHPCatch and CanUseFalseSwipe(PokemonIndexFalseSwipe) then
                return weakAttack() or sendUsablePokemon() or run()
            else
                return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendUsablePokemon() or run()
            end
        elseif not canChange and not canAttack(1) then
            return fatal("No se puede escapar ni atacar")
        elseif getActivePokemonNumber()==PokemonIndexFalseSwipe then
            return run() or sendUsablePokemon() or attack()
        else
            return run() or sendUsablePokemon() or attack()
        end            
    else
        log("... No hay suficientes Pokeballs")
        return run() or sendUsablePokemon() or attack()
    end
end
-------------------------------------------------------------------------
-------------------------------------------------------------------------

function SimpleCatchPath()
    if HavePokeballs() and TableLength(PokemonList)>0  then
        if getPokemonHealthPercent(1)>HPtoRetreat then
            if(getMapName()==TargetMap) then 
                if HuntType=="Rect" then
                    moveToRectangle(Coordenadas)
                elseif HuntType=="Grass" then
                    moveToGrass()
                elseif HuntType=="Water" then
                    moveToWater()
                end
            else
                log("... Buscando: "..TargetMap)
                Pathfinder.moveTo(getMapName(), TargetMap)
           end  
        else
            log("... Buscando Pokecenter en: "..getMapName())
            Pathfinder.useNearestPokecenter(getMapName())
        end
    else
        log("... No se puede ejecutar el Bot de Capturar con False Swipe")
        return fatal("... Verificar la cantidad de Pokeballs, la lista de Pokemon a atrapar o si hay un Pokemon con FalseSwipe en el equipo")
    end
end

function SimpleCatchLeveler()
    if HavePokeballs() then
        if(isOpponentShiny() or isCaptureList()) then
                return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendUsablePokemon() or run()
            
        elseif not canChange and not canAttack(1) then
            return fatal("No se puede escapar ni atacar")
        else
            return attack() or sendUsablePokemon() or sendAnyPokemon() or run()
        end            
    else
        log("... No hay suficientes Pokeballs")
        return attack() or sendUsablePokemon() or run()
    end
end

function SimpleCatch()
    if HavePokeballs() then
        if(isOpponentShiny() or isCaptureList()) then
                return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendUsablePokemon() or run()
            
        elseif not canChange and not canAttack(1) then
            return fatal("No se puede escapar ni atacar")
        else
            return run()
        end            
    else
        log("... No hay suficientes Pokeballs")
        return attack() or sendUsablePokemon() or run()
    end
end
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------- Funciones para subir de nivel ---------
function ChangeLeader()
    pokemonUsable=getTeamSize()
    if pokemonUsable>1 then
        for i=1,pokemonUsable do
            if getPokemonLevel(i)<TargetLvl and CanAttack(i) then
                log("... Cambiando al Pokemon ".. i)
                return swapPokemon(1, i)
            end
        end
    end
end

function  CanLevelUp()  
    pokemonUsable=getTeamSize()
    isAll=0;
    for i=1,pokemonUsable do
        if getPokemonLevel(i)>=TargetLvl then
            isAll=isAll+1
        end
    end
    if isAll < pokemonUsable then
        return true
    end
end

function LevelerPath()
	if CanLevelUp() then
		if CanAttack(1) and getPokemonLevel(1)<TargetLvl and getUsablePokemonCount()>getTeamSize()/2 then
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
                Pathfinder.moveTo(getMapName(), TargetMap)
            end  
        elseif ChangeLeader() then
            log("... Pokemon Cambiado, volviendo a buscar")
        else
            log("... Buscando Pokecenter en: "..getMapName())
            Pathfinder.useNearestPokecenter(getMapName())
        end      
    else  
        return fatal("... Todos los Pokemon alcanzaron el Nivel Objetivo: "..TargetLvl)
    end
end

function  Leveler()
    if isOpponentShiny() and HavePokeballs() then
        return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendUsablePokemon() or run()      
    elseif getPokemonHealth(getActivePokemonNumber())<=0 then
        return sendUsablePokemon() or sendAnyPokemon() or run()
    else
        return attack() or sendUsablePokemon() or run() 
    end 
end

-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------- Funciones para Repartir Experiencia---------
function ShareExpPath()
    if(CanAttack(PokemonSwap) and getPokemonHealthPercent(1)>HPtoRetreat) then
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
            Pathfinder.moveTo(getMapName(), TargetMap)
        end  
    else
        log("... Buscando Pokecenter en: "..getMapName())
        Pathfinder.useNearestPokecenter(getMapName())
    end
end

function ShareExp()
    if((isOpponentShiny() or not isAlreadyCaught()) and HavePokeballs())then
        return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendUsablePokemon() or sendAnyPokemon() or run() or attack()
    elseif canChange then
        if(CanAttack(PokemonSwap) and getActivePokemonNumber()~=PokemonSwap) then
            return sendPokemon(PokemonSwap)
        elseif getActivePokemonNumber()==PokemonSwap then
            return attack() or sendUsablePokemon() or run()
        else
            return run() or sendUsablePokemon() or sendAnyPokemon()
        end
    elseif CanAttack(1) then
        return attack()
    else
        return fatal("No se puede atacar ni cambiar de pokemon")
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
                    moveToRectangle(Coordenadas)
                elseif HuntType=="Grass" then
                    moveToGrass()
                elseif HuntType=="Water" then
                    moveToWater()
                end
            else
                log("... Buscando: "..TargetMap)
                Pathfinder.moveTo(getMapName(), TargetMap)
            end  
        else
            log("... Buscando Pokecenter en: "..getMapName())
            Pathfinder.useNearestPokecenter(getMapName())
        end
    else
        return fatal("... Entrenamiento EV ha terminado")
    end
end

function TrainEV()
    if((isOpponentShiny() or not isAlreadyCaught()) and HavePokeballs())then
        return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendUsablePokemon() or run()
    elseif isCorrectEV() then
        return attack() or sendUsablePokemon() or run() 
    elseif canChange  then
        return run() 
    else
    	return attack() or sendUsablePokemon() or run() 
    end   
end


-------------------------------------------------------------------------
-------------------------------------------------------------------------
---------------------------Vulpix Catch--------------------------------
-------------------------------------------------------------------------
-------------------------------------------------------------------------
-------------------------------------------------------------------------

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
--------- Aprender u olvidar movimientos---------
function onLearningMove(moveName, pokemonIndex)
    log("... "..getPokemonName(pokemonIndex).." está aprendiendo un nuevo movimiento: "..moveName)
    forgetAnyMoveExcept(KeepMoves)
end
-------------------------------------------------------------------------