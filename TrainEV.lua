dofile "YiwoScript.lua"


--TargetMap    x     = "Mt. Silver Lower Mountainside"
TargetMap         = "Route 6"
HuntType          = "Grass"
HPtoRetreat       = 20
ListEV           	= {"Attack", "Defense", "SpAttack","SpDefense","Speed","HP"}
AmmountEV        	= {0,0,252,0,252,0}

function onStart()
end

function onPause()
    EvTrainLog()
end

function onStop()
end

function onPathAction()
	TrainEVPath()
end

function onBattleAction()
	if(getOpponentName()=="Abra") then 
		return useItem("Pokeball") or useItem("Great Ball") or useItem("Ultra Ball")
	else
		TrainEV()
	end
end

function onBattleMessage(message)   
	BattleMessageLog(message)
end