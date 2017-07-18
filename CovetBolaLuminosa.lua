dofile "YiwoScript.lua"

TargetMap         = "Viridian Forest"
HuntType          = "Grass"
HPtoRetreat       = 20
PokemonTarget	  = "Pikachu"

function onPathAction()
	CovetItemsPath()
end

function onBattleAction()
	CovetItems()
end

function onBattleMessage(message)   
	BattleMessageLog(message)
end