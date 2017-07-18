dofile "YiwoScript.lua"

TargetMap         = "Route 3"
--TargetMap         = "Pewter City"
HuntType          = "Grass"
HPtoRetreat       = 20
PokemonTarget	  = "Budew"
CatchPokemon	  =true

function onPathAction()
	CovetItemsPath()
end

function onBattleAction()
	CovetItems()
end

function onBattleMessage(message)   
	BattleMessageLog(message)
end