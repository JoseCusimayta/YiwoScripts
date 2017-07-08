dofile "YiwoScript.lua"


--TargetMap         = "Mt. Silver Lower Mountainside"
TargetMap         = "Route 1"
HuntType          = "Grass"
HPtoRetreat       = 20
ListEV           	= {"Attack", "Defense", "SpAttack","SpDefense","Speed","HP"}
AmmountEV        	= {252,0,0,0,250,0}

function onStart()
    EvTrainLog()
end

function onPause()
    EvTrainLog()
end

function onStop()
    EvTrainLog()
end

function onPathAction()
	TrainEVPath()
end

function onBattleAction()
	TrainEV()
end

function onBattleMessage(message)   
	BattleMessageLog(message)
end