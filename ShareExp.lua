dofile "YiwoScript.lua"


--TargetMap         = "Mt. Silver Lower Mountainside"
TargetMap         = "Cerulean City"
HuntType          = "Grass"
HPtoRetreat       = 20 
PokemonHPCatch    = 50 
TargetLvl         = 101
PokemonSwap       = 4
CatchPokemon	  =false

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