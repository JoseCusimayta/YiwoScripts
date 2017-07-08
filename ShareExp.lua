dofile "YiwoScript.lua"


--TargetMap         = "Mt. Silver Lower Mountainside"
TargetMap         = "Route 8"
HuntType          = "Grass"
HPtoRetreat       = 20 
PokemonHPCatch    = 50 
TargetLvl         = 101
PokemonSwap       = 5

function onStart()
    ShareExpLog()
end

function onPause()
    ShareExpLog()
end

function onStop()
    ShareExpLog()
end

function onPathAction()
	ShareExpPath()
end

function onBattleAction()
	ShareExp()
end

function onBattleMessage(message)   
	BattleMessageLog(message)
end