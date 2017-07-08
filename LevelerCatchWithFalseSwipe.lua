dofile "YiwoScript.lua"

TargetMap         = "Viridian Maze"
HuntType          = "Grass"
HPtoRetreat       = 20 
PokemonHPCatch    = 50 
NatureTarget      ="Modest"
PokemonList       = {"Squirtle","Charmander","Budew","Magmar","Treecko","Bulbasaur","Kangaskhan","Chansey",
                    "Tangela","Chikorita","Turtwig","Sewaddle","Fletchling","Trevenant","Pansage","Surskit",
                    "Cyndaquil","Lapras","Totodile","Feebas"} 

KeepMoves           = {"False Swipe", "Earthquake", "Double-Edge", "Ice Fang", "Thunder Fang", "Fire Fang", "Play Rough", 
                    "Bite", "Covet", "Low Kick", "Quick Attack", "Ice Punch", "Thunder Punch", "Fire Punch", "Sky Uppercut", 
                    "Thunderbolt", "Thunder", "Thrash", "Horn Attack", "Poison Jab", "Bone Rush", "Thrash", "Surf",
                    "Cut", "Rock Smash", "Headbutt","Aerial Ace", "Dig", "Toxic Spikes", "Pin Missile", "Twineedle",
                    "Leech Seed","Wing Attack" ,"Crunch","Inferno","Take Down","Air Cutter","Poison Fang",
                    "Mud Bomb", "Petal Dance","Giga Drain","Leaf Blade","Night Slash","X-Scissor","Retaliate"}
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
    CatcherPath()
end

function onBattleAction()
    Catcher()   
end

function onBattleMessage(message)   
    BattleMessageLog(message)
end