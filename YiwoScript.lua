name = "Script para Atrapar y Subir de nivel en cualquier lugar"
author = "Yiwo"

description = [[ A disfrutar del Script!! \(+o+)/!!! ]]

local Pathfinder        = require "ProShinePathfinder/Pathfinder/MoveToApp"
local TargetMap         = "Route 48"  -- Ruta donde ejecutar el Script
local ScriptType        = "Catcher" --Catcher (Atrapar Pokemon) Leveler (Sube de nivel a todos los pokemon) ShareExp (Sube de nivel al primero pokemon usando compartir experiencia)
local HuntType          = "Grass" --Grass (busca en la hierba), Water (busca en el agua), Rect (Busca en las coordenadas)
local Coordenadas       = {69,30,71,39} --Coordenadas a cazar: minX, minY, maxX, maxY
local HPtoRetreat       = 25    --EL porcentaje de vida para regresar al Centro Pokemon
local KeepMoves         ={"False Swipe", "Earthquake", "Double-Edge", "Ice Fang", "Thunder Fang", "Fire Fang", "Play Rough", 
                        "Bite", "Covet", "Low Kick", "Quick Attack", "Ice Punch", "Thunder Punch", "Fire Punch", "Sky Uppercut", 
                        "Thunderbolt", "Thunder", "Thrash", "Horn Attack", "Poison Jab", "Bone Rush", "Thrash", "Surf",
                        "Cut", "Rock Smash", "Headbutt","Aerial Ace", "Dig", "Toxic Spikes", "Pin Missile", "Twineedle",
                        "Leech Seed","Wing Attack" ,"Crunch","Inferno","Take Down","Air Cutter","Poison Fang",
                        "Mud Bomb", "Petal Dance"}


----------------------Example 1------------------------------------------------
--local TargetMap="Route 25"
--local ScriptType="Leveler"
--local HuntType= "Grass"
--local Coordenadas= {69,30,71,39}
-----------------------Example 2---------------------------------------------
-- local TargetMap="Cinnabar mansion 3"
-- local ScriptType="Catcher"
-- local HuntType= "Rect"
-- local Coordenadas= {69,30,71,39}
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------- Configuración para Leveler ---------
local TargetLvl          = 35 -- Hasta que nivel se desea subir
-------------------------------------------------------------------------

-------------------------------------------------------------------------
--------- Configuración para Catcher ---------
local PokemonList         = {"Squirtle","Charmander","Budew","Magmar","Treecko","Bulbasaur","Kangaskhan","Chansey",
                                "Tangela","Chikorita","Turtwig","Sewaddle","Fletchling","Trevenant","Pansage"} --Lista de Pokemon a Capturar
local PokemonHPCatch      = 50   --Cantidad de vida para atrapar
local PokemonCatched      = 0   --Cantidad de Pokemon atrapados
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------- Configuración para TrainEV ---------
local ListEV              = {"Attack", "Defense", "SpAttack","SpDefense","Speed","HP"}
local AmmountEV           = {250,0,0,0,211,0}
--31 arbok
-------------------------------------------------------------------------

-------------- Variables a no tocar -------------------------------------
 local PokemonNameSeen    ={"Lista de Pokemon Vistos"}
 local canChange		  =true
-------------------------------------------------------------------------
-------------------------------------------------------------------------

-------------------------------------------------------------------------
--------- Funciones del juego ---------
function onStart()
    if(ScriptType=="Catcher") then
        log("... Cantidad de pokemon en la lista: "..TableLength(PokemonList))
        log("... Cantidad de Pokeballs: "..getItemQuantity("Pokeball"))
    elseif(ScriptType=="Leveler") then
        log("... Subiendo Pokemon al nivel: "..TargetLvl)
    elseif(ScriptType=="ShareExp") then
        log("... Subiendo de nivel con Experiencia Compartida")
    elseif(ScriptType=="OnlyCatch") then
        log("... Cantidad de pokemon en la lista: "..TableLength(PokemonList))
        log("... Cantidad de Pokeballs: "..getItemQuantity("Pokeball"))
    elseif(ScriptType=="TrainEV") then
        log("... Entrenando EV... ")
    else
        log("... Error de ScriptType: "..ScriptType) 
    end
end

function onPause()
    if(ScriptType=="Catcher") then
        log("... Cantidad de pokemon en la lista: "..TableLength(PokemonList))
        log("... Cantidad de Pokeballs: "..getItemQuantity("Pokeball"))
        log("... Cantidad de Pokemon capturados: "..PokemonCatched)
        log("...")
        TableDataRead(PokemonNameSeen)
    elseif(ScriptType=="Leveler") then
        log("... Subiendo Pokemon al nivel: "..TargetLvl)
        log("... Cantidad de Pokemon capturados: "..PokemonCatched)
    elseif(ScriptType=="ShareExp") then
        log("... Subiendo de nivel con Experiencia Compartida")
        log("... Cantidad de Pokemon capturados: "..PokemonCatched)
    elseif(ScriptType=="OnlyCatch") then
        log("... Cantidad de pokemon en la lista: "..TableLength(PokemonList))
        log("... Cantidad de Pokeballs: "..getItemQuantity("Pokeball"))
        log("... Cantidad de Pokemon capturados: "..PokemonCatched)
        log("...")
        TableDataRead(PokemonNameSeen)
    elseif(ScriptType=="TrainEV") then
        log("... Entrando EV... ")
        log("....................")
        for i=1,6 do
            log(ListEV[i]..": "..getPokemonEffortValue(1,ListEV[i]))
        end
    else
        log("... Error de ScriptType: "..ScriptType) 
    end   
end

function onPathAction()   
    if (ScriptType=="Catcher") then        
        if findPokemonWithFalseSwipe()==getPokemonName(1) then
            if PokemonList[1]~="" then
                if CanUseFalseSwipe() and CanAttack(1) then
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
                    Pathfinder.useNearestPokecenter(getMapName(),"error")
                end       
            else
                log("... Lista de captura vacía")
            end
        elseif findPokemonWithFalseSwipe()~=nil then
            ChangePokeonWithFalseSwipe()
        else
             return fatal("... No hay pokemon con FalseSwipe")
        end
    elseif (ScriptType=="OnlyCatch")then
        if findPokemonWithFalseSwipe()==getPokemonName(1) then
            if PokemonList[1]~="" then
                if CanUseFalseSwipe() and CanAttack(1) then
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
                    Pathfinder.useNearestPokecenter(getMapName(),"error")
                end       
            else
                log("... Lista de captura vacía")
            end
        elseif findPokemonWithFalseSwipe()~=nil then
            ChangePokeonWithFalseSwipe()
        else
             return fatal("... No hay pokemon con FalseSwipe")
        end
    elseif (ScriptType=="Leveler") then
        if CanLevelUp() then
            if leaderCanAttack() then
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
                Pathfinder.useNearestPokecenter(getMapName(),"error")
            end      
        else  
            return fatal("... Todos los Pokemon alcanzaron el Nivel Objetivo: "..TargetLvl)
        end
    elseif (ScriptType=="ShareExp") then
        if CanUsePokemonToShareExp() then
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
    elseif (ScriptType=="TrainEV") then
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
    else
        log("... Error de ScriptType: "..ScriptType) 
    end
end

function onBattleAction()
    if (ScriptType=="Catcher") then
        catchPokemon()
    elseif (ScriptType=="Leveler") then
        levelerPokemon()        
    elseif (ScriptType=="ShareExp") then
        ShareExp() 
    elseif (ScriptType=="OnlyCatch") then
        OnlyCatch()
    elseif (ScriptType=="TrainEV") then
        TrainEV()
    else
       log("... Error de ScriptType: "..ScriptType) 
    end
end

function onBattleMessage(message)   
	if stringContains(message, "You can not switch this Pokemon!") then
        canChange = false
    end
    if TableDataAdd(PokemonNameSeen) then 
        table.insert(PokemonNameSeen,getOpponentName())  
    end
  if stringContains(message, "Success!") then
        PokemonCatched=PokemonCatched+1
            log("... Se ha(n) atrapado " .. PokemonCatched.. " Pokemon " )
    end
end

-------------------------------------------------------------------------

-------------------------------------------------------------------------
--------------------------- Funciones generales -------------------------

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
            if moveName ~= "False Swipe" and getPokemonMovePower(pokemonIndex,i)>1 and getRemainingPowerPoints(pokemonIndex, moveName) >0 then
                _canAttack=true
                break   
            end
        end
    end
    return _canAttack
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
--------- Funciones para cazar Pokemon ---------

function findPokemonWithFalseSwipe()
    value=nil
    for pokemon=1,getUsablePokemonCount() do
        for move=1,4 do
            if getPokemonMoveName(pokemon,move)=="False Swipe" then
                value=getPokemonName(pokemon)
                return value
            end
        end
    end
    return value
end

function ChangePokeonWithFalseSwipe()
     for pokemon=1,getUsablePokemonCount() do
        for move=1,4 do
            if getPokemonMoveName(pokemon,move)=="False Swipe" then
               swapPokemon(1,pokemon)               
            end
        end
    end
end

function CanUseFalseSwipe()
    FalseSwipeUsable=false
    if getPokemonHealthPercent(1)>=HPtoRetreat then
        for i=1,4 do
            moveName=getPokemonMoveName(1,i)
            if moveName == "False Swipe" and getRemainingPowerPoints(1, moveName)>0 then
                FalseSwipeUsable=true
                break
            end
        end
    end
    return FalseSwipeUsable
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

function catchPokemon()
    if HavePokeballs() then
        if(isOpponentShiny() or not isAlreadyCaught() or isCaptureList()) then
            if(getOpponentHealthPercent()>=PokemonHPCatch and CanUseFalseSwipe() )  then                
                return weakAttack() or sendUsablePokemon()
            else
                return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendUsablePokemon()
            end
            log("... Objetivo: Capturar a ".. getOpponentName())
        elseif CanAttack(1) then
            return attack() or sendUsablePokemon() or run()             
        elseif getActivePokemonNumber()==1 and canChange then
            return sendUsablePokemon() or run() or attack()            
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
--------- Funciones para subir de nivel ---------

function leaderCanAttack()
    _leaderCanAttack=false
    if getPokemonLevel(1)<TargetLvl then
        _leaderCanAttack=CanAttack(1)
    end
    return _leaderCanAttack
end

function ChangeLeader()
    pokemonUsable=getUsablePokemonCount()
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
    pokemonUsable=getUsablePokemonCount()
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

function  levelerPokemon()
    if((isOpponentShiny() or not isAlreadyCaught()) and HavePokeballs())then
        return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendUsablePokemon()      
    elseif  getPokemonHealth(getActivePokemonNumber())<=0 then
        return sendAnyPokemon()
    else
        return attack() or sendUsablePokemon() or run() 
    end 
end

-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------- Funciones para Repartir Experiencia---------
function CanUsePokemonToShareExp()
    pokemonUsable=getUsablePokemonCount()
    if getPokemonHealthPercent(1)>=HPtoRetreat then
        if pokemonUsable>=2 then
            for pokemon=2,pokemonUsable do
                if(CanAttack(pokemon)) then
                    return true
                end
            end
        end
    end
end

function ShareExp()
    if  getActivePokemonNumber()==1 and canChange then
        return sendUsablePokemon() or run() or attack()
    elseif((isOpponentShiny() or not isAlreadyCaught()) and HavePokeballs())then
        return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendUsablePokemon()
    else
        return attack() or sendUsablePokemon() or run() 
    end
end
-------------------------------------------------------------------------
-------------------------------------------------------------------------
--------- Funciones para Solo cazar---------
function OnlyCatch()
    if HavePokeballs() then
        if(isOpponentShiny() or not isAlreadyCaught() or isCaptureList()) then
            if(getOpponentHealthPercent()>=PokemonHPCatch and CanUseFalseSwipe() )  then                
                return weakAttack() or sendUsablePokemon()
            else
                return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")
            end
            log("... Objetivo: Capturar a ".. getOpponentName())        
        elseif  canChange  then
            return run() 
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
-------------------------------------------------------------------------
--------------------------- Train EV ------------------------------------

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
function TrainEV()
    if((isOpponentShiny() or not isAlreadyCaught()) and HavePokeballs())then
        return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")  or sendUsablePokemon()      
    elseif isCorrectEV()  then
        log("... EV Correcto a subir. Accion: Debilitar")
        return attack() or sendUsablePokemon() or run() 
    elseif  canChange  then
		log("... No es el EV correcto para subir. Accion: Huir")
        return run() 
    else
    	return attack() or sendUsablePokemon() or run() 
    end   
end

-------------------------------------------------------------------------
--------- Aprender u olvidar movimientos---------
function onLearningMove(moveName, pokemonIndex)
    log("... "..getPokemonName(pokemonIndex).." está aprendiendo un nuevo movimiento: "..moveName)
    forgetAnyMoveExcept(KeepMoves)
end
-------------------------------------------------------------------------