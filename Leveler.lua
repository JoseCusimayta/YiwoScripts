dofile "YiwoScript.lua"


--TargetMap         = "Mt. Silver Lower Mountainside"
TargetMap         = "Route 6"
TargetMap 			="Cerulean City"
--TargetMap 			="Mt. Moon 1F"
--TargetMap 			="Route 1"
--TargetMap 			="Pewter City"
--TargetMap 			="Viridian Maze"
HuntType          = "Grass"
HPtoRetreat       = 20
TargetLvl         = 50
CatchPokemon	  = true

function onStart()
    LevelerLog()
end

function onPause()
    LevelerLog()
end

function onStop()
    LevelerLog()
end

function onPathAction()
	LevelerPath()
end

function onBattleAction()
	Leveler()	
end

function onBattleMessage(message)   
	BattleMessageLog(message)
end