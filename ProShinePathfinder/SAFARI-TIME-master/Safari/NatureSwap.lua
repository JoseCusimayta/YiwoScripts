
function natureSwap()
	
	if synch1 ~= synch2 and synch2 ~= synch3 then
	
	if isMorning() and getPokemonNature(synchIndex1) == synch3 and getPokemonNature(synchIndex2) == synch1 and getPokemonNature(synchIndex3) == synch2 then
		return swapPokemon(synchIndex1, synchIndex2)
	elseif isMorning() and getPokemonNature(synchIndex1) == synch3 and getPokemonNature(synchIndex2) == synch2 and getPokemonNature(synchIndex3) == synch1 then
		return swapPokemon(synchIndex1, synchIndex3)
	elseif isMorning() and getPokemonNature(synchIndex1) == synch1 then

		if huntMap1 == "Area 1" then
			AreaOne()
		elseif huntMap1 == "Area 2" then
			AreaTwo()
		elseif huntMap1 == "Area 3" then
			AreaThree()
		elseif huntMap1 == "Exclusive" then
			Exclusive()
		end

	end

	if isNoon() and getPokemonNature(synchIndex1) == synch1 and getPokemonNature(synchIndex2) == synch2 and getPokemonNature(synchIndex3) == synch3 then
		return swapPokemon(synchIndex1, synchIndex2)
	elseif isNoon() and getPokemonNature(synchIndex1) == synch1 and getPokemonNature(synchIndex2) == synch3 and getPokemonNature(synchIndex3) == synch2 then
		return swapPokemon(synchIndex1, synchIndex3)
	elseif isNoon() and getPokemonNature(synchIndex1) == synch2 then

		if huntMap2 == "Area 1" then
			AreaOne()
		elseif huntMap2 == "Area 2" then
			AreaTwo()
		elseif huntMap2 == "Area 3" then
			AreaThree()
		elseif huntMap2 == "Exclusive" then
			Exclusive()
		end
	end
	
	if isNight() and getPokemonNature(synchIndex1) == synch2 and getPokemonNature(synchIndex2) == synch3 and getPokemonNature(synchIndex3) == synch1 then
		return swapPokemon(synchIndex1, synchIndex2)
	elseif isNight() and getPokemonNature(synchIndex1) == synch2 and getPokemonNature(synchIndex2) == synch1 and getPokemonNature(synchIndex3) == synch3 then
		return swapPokemon(synchIndex1, synchIndex3)
	elseif isNight() and getPokemonNature(synchIndex1) == synch3 then

		if huntMap3 == "Area 1" then
			AreaOne()
		elseif huntMap3 == "Area 2" then
			AreaTwo()
		elseif huntMap3 == "Area 3" then
			AreaThree()
		elseif huntMap3 == "Exclusive" then
			Exclusive()
		end
	end
	
	elseif synch1 == synch2 and synch2 ~= synch3 then
	
	if isMorning() and getPokemonNature(1) ~= synch1 then
		return swapPokemon(synchIndex1, synchIndex3)
	elseif isMorning() and getPokemonNature(1) == synch1 then
		if huntMap1 == "Area 1" then
			AreaOne()
		elseif huntMap1 == "Area 2" then
			AreaTwo()
		elseif huntMap1 == "Area 3" then
			AreaThree()
		elseif huntMap1 == "Exclusive" then
			Exclusive()
		end
	end
	if isNoon() and getPokemonNature(1) ~= synch2 then
		return swapPokemon(synchIndex2, synchIndex3)
	elseif isNoon() and getPokemonNature(1) == synch2 then
		if huntMap2 == "Area 1" then
			AreaOne()
		elseif huntMap2 == "Area 2" then
			AreaTwo()
		elseif huntMap2 == "Area 3" then
			AreaThree()
		elseif huntMap2 == "Exclusive" then
			Exclusive()
		end
	end
	if isNight() and getPokemonNature(1) ~= synch3 then
		return swapPokemon(synchIndex2, synchIndex3)
	elseif isNight() and getPokemonNature(1) == synch3 then
		if huntMap3 == "Area 1" then
			AreaOne()
		elseif huntMap3 == "Area 2" then
			AreaTwo()
		elseif huntMap3 == "Area 3" then
			AreaThree()
		elseif huntMap3 == "Exclusive" then
			Exclusive()
		end
	end
	
	elseif synch1 == synch3 and synch2 ~= synch3 then
	
	if isMorning() and getPokemonNature(1) ~= synch1 then
		return swapPokemon(synchIndex1, synchIndex2)
	elseif isMorning() and getPokemonNature(1) == synch1 then
		if huntMap1 == "Area 1" then
			AreaOne()
		elseif huntMap1 == "Area 2" then
			AreaTwo()
		elseif huntMap1 == "Area 3" then
			AreaThree()
		elseif huntMap1 == "Exclusive" then
			Exclusive()
		end
	end
	if isNoon() and getPokemonNature(1) ~= synch2 then
		return swapPokemon(synchIndex2, synchIndex1)
	elseif isNoon() and getPokemonNature(1) == synch2 then
		if huntMap2 == "Area 1" then
			AreaOne()
		elseif huntMap2 == "Area 2" then
			AreaTwo()
		elseif huntMap2 == "Area 3" then
			AreaThree()
		elseif huntMap2 == "Exclusive" then
			Exclusive()
		end
	end
	if isNight() and getPokemonNature(1) ~= synch3 then
		return swapPokemon(synchIndex2, synchIndex3)
	elseif isNight() and getPokemonNature(1) == synch3 then
		if huntMap3 == "Area 1" then
			AreaOne()
		elseif huntMap3 == "Area 2" then
			AreaTwo()
		elseif huntMap3 == "Area 3" then
			AreaThree()
		elseif huntMap3 == "Exclusive" then
			Exclusive()
		end
	end
	
	elseif synch1 == synch3 and synch2 == synch3 then
	
	if isMorning() and getPokemonNature(1) == synch1 then
		if huntMap1 == "Area 1" then
			AreaOne()
		elseif huntMap1 == "Area 2" then
			AreaTwo()
		elseif huntMap1 == "Area 3" then
			AreaThree()
		elseif huntMap1 == "Exclusive" then
			Exclusive()
		end
	end
	if isNoon() and getPokemonNature(1) == synch2 then
		if huntMap2 == "Area 1" then
			AreaOne()
		elseif huntMap2 == "Area 2" then
			AreaTwo()
		elseif huntMap2 == "Area 3" then
			AreaThree()
		elseif huntMap2 == "Exclusive" then
			Exclusive()
		end
	end
	if isNight() and getPokemonNature(1) == synch3 then
		if huntMap3 == "Area 1" then
			AreaOne()
		elseif huntMap3 == "Area 2" then
			AreaTwo()
		elseif huntMap3 == "Area 3" then
			AreaThree()
		elseif huntMap3 == "Exclusive" then
			Exclusive()
		end
	end
	
	end
	
end