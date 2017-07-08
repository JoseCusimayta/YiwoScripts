dofile "YiwoScript.lua"


--TargetMap         = "Mt. Silver Lower Mountainside"
TargetMap         = "Route 1"
HuntType          = "Grass"
HPtoRetreat       = 50
KeepMoves           = {"False Swipe", "Earthquake", "Double-Edge", "Ice Fang", "Thunder Fang", "Fire Fang", "Play Rough", 
                    "Bite", "Covet", "Low Kick", "Quick Attack", "Ice Punch", "Thunder Punch", "Fire Punch", "Sky Uppercut", 
                    "Thunderbolt", "Thunder", "Thrash", "Horn Attack", "Poison Jab", "Bone Rush", "Thrash", "Surf",
                    "Cut", "Rock Smash", "Headbutt","Aerial Ace", "Dig", "Toxic Spikes", "Pin Missile", "Twineedle",
                    "Leech Seed","Wing Attack" ,"Crunch","Inferno","Take Down","Air Cutter","Poison Fang",
                    "Mud Bomb", "Petal Dance","Giga Drain","Leaf Blade","Night Slash","X-Scissor","Retaliate","Bonemerang",
                    "Sludge Bomb", "Gyro Ball","Rollout","Horn Attack","False Swipe"}
TargetLvl         = 101


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