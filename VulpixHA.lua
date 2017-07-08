dofile "YiwoScript.lua"


--TargetMap         = "Mt. Silver Lower Mountainside"
TargetMap         = "Route 8"
HuntType          = "Grass"
HPtoRetreat       = 20 
PokemonHPCatch    = 50 
TargetLvl         = 101
PokemonSwap       = 3

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
	LevelerPath()
end

function onBattleAction()
	VulpixHA()
end

function onBattleMessage(message)   
	BattleMessageLog(message)
end