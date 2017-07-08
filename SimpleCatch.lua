dofile "YiwoScript.lua"


--TargetMap         = "Mt. Silver Lower Mountainside"
--TargetMap         = "Viridian Forest"
--TargetMap         = "Viridian Maze"
TargetMap         = "Route 1"
HuntType          = "Grass"
HPtoRetreat       = 50

function onStart()
    CatcherLog()
end

function onPause()
    CatcherLog()
end

function onStop()
    CatcherLog()
end

function onPathAction()
	SimpleCatchPath()
end

function onBattleAction()
	SimpleCatch()
end

function onBattleMessage(message)   
	BattleMessageLog(message)
end
