function sleepPP()
	if sleepmove == "Hypnosis" or sleepmove == "Spore" or sleepmove == "Sleep Powder" or sleepmove ~= "None" then 
		return getRemainingPowerPoints(sleeper, sleepmove) >= 1 
	elseif sleepmove == "None" then
		isPokemonUsable(sleeper)
	end
end
function fswipePP()
	if weakmove == "False Swipe" or weakmove ~= "None" then 
		return getRemainingPowerPoints(falseswiper, weakmove) >= 1 
	elseif weakmove == "None" then
		isPokemonUsable(falseswiper)
	end
end