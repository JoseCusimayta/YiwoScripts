
function natureSwap()
	
	if synch1 ~= synch2 and synch2 ~= synch3 then
	
	if isMorning() and getPokemonNature(synchIndex1) == synch3 and getPokemonNature(synchIndex2) == synch1 and getPokemonNature(synchIndex3) == synch2 then
		return swapPokemon(synchIndex1, synchIndex2)
	elseif isMorning() and getPokemonNature(synchIndex1) == synch3 and getPokemonNature(synchIndex2) == synch2 and getPokemonNature(synchIndex3) == synch1 then
		return swapPokemon(synchIndex1, synchIndex3)
	elseif isMorning() and getPokemonNature(synchIndex1) == synch1 then
	
		--KANTO Region
		if huntMap1 == "Area 1" then
			AreaOne()
		elseif huntMap1 == "Area 2" then
			AreaTwo()
		elseif huntMap1 == "Area 3" then
			AreaThree()
		elseif huntMap1 == "Exclusive" then
			Exclusive()
			
		--JOHTO Region
		elseif huntMap1 == "GrassandSwamp" then
            GsMap()
        elseif huntMap1 == "Mountain" then
            MtMap()
        elseif huntMap1 == "Snow" then
            SnMap()
        elseif huntMap1 == "Wet" then
            WetMap()
			
		--HOENN Region
		elseif huntMap1 == "Zone 1" then
			Zone1()
		elseif huntMap1 == "Zone 2" then
			Zone2()
		elseif huntMap1 == "Zone 3" then
			Zone3()
		elseif huntMap1 == "Zone 4" then
			Zone4()
		elseif huntMap1 == "Zone 5" then
			Zone5()
		elseif huntMap1 == "Zone 6" then
			Zone6()
		end

	end

	if isNoon() and getPokemonNature(synchIndex1) == synch1 and getPokemonNature(synchIndex2) == synch2 and getPokemonNature(synchIndex3) == synch3 then
		return swapPokemon(synchIndex1, synchIndex2)
	elseif isNoon() and getPokemonNature(synchIndex1) == synch1 and getPokemonNature(synchIndex2) == synch3 and getPokemonNature(synchIndex3) == synch2 then
		return swapPokemon(synchIndex1, synchIndex3)
	elseif isNoon() and getPokemonNature(synchIndex1) == synch2 then
		
		--KANTO Region
		if huntMap2 == "Area 1" then
			AreaOne()
		elseif huntMap2 == "Area 2" then
			AreaTwo()
		elseif huntMap2 == "Area 3" then
			AreaThree()
		elseif huntMap2 == "Exclusive" then
			Exclusive()
			
		--JOHTO Region
		elseif huntMap2 == "GrassandSwamp" then
            GsMap()
        elseif huntMap2 == "Mountain" then
            MtMap()
        elseif huntMap2 == "Snow" then
            SnMap()
        elseif huntMap2 == "Wet" then
            WetMap()
			
		--HOENN Region
		elseif huntMap2 == "Zone 1" then
			Zone1()
		elseif huntMap2 == "Zone 2" then
			Zone2()
		elseif huntMap2 == "Zone 3" then
			Zone3()
		elseif huntMap2 == "Zone 4" then
			Zone4()
		elseif huntMap2 == "Zone 5" then
			Zone5()
		elseif huntMap2 == "Zone 6" then
			Zone6()
		end
	end
	
	if isNight() and getPokemonNature(synchIndex1) == synch2 and getPokemonNature(synchIndex2) == synch3 and getPokemonNature(synchIndex3) == synch1 then
		return swapPokemon(synchIndex1, synchIndex2)
	elseif isNight() and getPokemonNature(synchIndex1) == synch2 and getPokemonNature(synchIndex2) == synch1 and getPokemonNature(synchIndex3) == synch3 then
		return swapPokemon(synchIndex1, synchIndex3)
	elseif isNight() and getPokemonNature(synchIndex1) == synch3 then
		
		--KANTO Region
		if huntMap3 == "Area 1" then
			AreaOne()
		elseif huntMap3 == "Area 2" then
			AreaTwo()
		elseif huntMap3 == "Area 3" then
			AreaThree()
		elseif huntMap3 == "Exclusive" then
			Exclusive()
			
		--JOHTO Region
		elseif huntMap3 == "GrassandSwamp" then
            GsMap()
        elseif huntMap3 == "Mountain" then
            MtMap()
        elseif huntMap3 == "Snow" then
            SnMap()
        elseif huntMap3 == "Wet" then
            WetMap()
			
		--HOENN Region
		elseif huntMap3 == "Zone 1" then
			Zone1()
		elseif huntMap3 == "Zone 2" then
			Zone2()
		elseif huntMap3 == "Zone 3" then
			Zone3()
		elseif huntMap3 == "Zone 4" then
			Zone4()
		elseif huntMap3 == "Zone 5" then
			Zone5()
		elseif huntMap3 == "Zone 6" then
			Zone6()
		end
	end
	
	elseif synch1 == synch2 and synch2 ~= synch3 then
	
	if isMorning() and getPokemonNature(1) ~= synch1 then
		return swapPokemon(synchIndex1, synchIndex3)
	elseif isMorning() and getPokemonNature(1) == synch1 then
	
		--KANTO Region
		if huntMap1 == "Area 1" then
			AreaOne()
		elseif huntMap1 == "Area 2" then
			AreaTwo()
		elseif huntMap1 == "Area 3" then
			AreaThree()
		elseif huntMap1 == "Exclusive" then
			Exclusive()
			
		--JOHTO Region
		elseif huntMap1 == "GrassandSwamp" then
            GsMap()
        elseif huntMap1 == "Mountain" then
            MtMap()
        elseif huntMap1 == "Snow" then
            SnMap()
        elseif huntMap1 == "Wet" then
            WetMap()
			
		--HOENN Region
		elseif huntMap1 == "Zone 1" then
			Zone1()
		elseif huntMap1 == "Zone 2" then
			Zone2()
		elseif huntMap1 == "Zone 3" then
			Zone3()
		elseif huntMap1 == "Zone 4" then
			Zone4()
		elseif huntMap1 == "Zone 5" then
			Zone5()
		elseif huntMap1 == "Zone 6" then
			Zone6()
		end
	end
	if isNoon() and getPokemonNature(1) ~= synch2 then
		return swapPokemon(synchIndex2, synchIndex3)
	elseif isNoon() and getPokemonNature(1) == synch2 then
	
		--KANTO Region
		if huntMap2 == "Area 1" then
			AreaOne()
		elseif huntMap2 == "Area 2" then
			AreaTwo()
		elseif huntMap2 == "Area 3" then
			AreaThree()
		elseif huntMap2 == "Exclusive" then
			Exclusive()
			
		--JOHTO Region
		elseif huntMap2 == "GrassandSwamp" then
            GsMap()
        elseif huntMap2 == "Mountain" then
            MtMap()
        elseif huntMap2 == "Snow" then
            SnMap()
        elseif huntMap2 == "Wet" then
            WetMap()
				
		--HOENN Region
		elseif huntMap2 == "Zone 1" then
			Zone1()
		elseif huntMap2 == "Zone 2" then
			Zone2()
		elseif huntMap2 == "Zone 3" then
			Zone3()
		elseif huntMap2 == "Zone 4" then
			Zone4()
		elseif huntMap2 == "Zone 5" then
			Zone5()
		elseif huntMap2 == "Zone 6" then
			Zone6()
		end
	end
	if isNight() and getPokemonNature(1) ~= synch3 then
		return swapPokemon(synchIndex2, synchIndex3)
	elseif isNight() and getPokemonNature(1) == synch3 then
		--KANTO Region
		if huntMap3 == "Area 1" then
			AreaOne()
		elseif huntMap3 == "Area 2" then
			AreaTwo()
		elseif huntMap3 == "Area 3" then
			AreaThree()
		elseif huntMap3 == "Exclusive" then
			Exclusive()
			
		--JOHTO Region
		elseif huntMap3 == "GrassandSwamp" then
            GsMap()
        elseif huntMap3 == "Mountain" then
            MtMap()
        elseif huntMap3 == "Snow" then
            SnMap()
        elseif huntMap3 == "Wet" then
            WetMap()
			
		--HOENN Region
		elseif huntMap3 == "Zone 1" then
			Zone1()
		elseif huntMap3 == "Zone 2" then
			Zone2()
		elseif huntMap3 == "Zone 3" then
			Zone3()
		elseif huntMap3 == "Zone 4" then
			Zone4()
		elseif huntMap3 == "Zone 5" then
			Zone5()
		elseif huntMap3 == "Zone 6" then
			Zone6()
		end
	end
	
	elseif synch1 == synch3 and synch2 ~= synch3 then
	
	if isMorning() and getPokemonNature(1) ~= synch1 then
		return swapPokemon(synchIndex1, synchIndex2)
	elseif isMorning() and getPokemonNature(1) == synch1 then
	
		--KANTO Region
		if huntMap1 == "Area 1" then
			AreaOne()
		elseif huntMap1 == "Area 2" then
			AreaTwo()
		elseif huntMap1 == "Area 3" then
			AreaThree()
		elseif huntMap1 == "Exclusive" then
			Exclusive()
			
		--JOHTO Region
		elseif huntMap1 == "GrassandSwamp" then
            GsMap()
        elseif huntMap1 == "Mountain" then
            MtMap()
        elseif huntMap1 == "Snow" then
            SnMap()
        elseif huntMap1 == "Wet" then
            WetMap()
			
		--HOENN Region
		elseif huntMap1 == "Zone 1" then
			Zone1()
		elseif huntMap1 == "Zone 2" then
			Zone2()
		elseif huntMap1 == "Zone 3" then
			Zone3()
		elseif huntMap1 == "Zone 4" then
			Zone4()
		elseif huntMap1 == "Zone 5" then
			Zone5()
		elseif huntMap1 == "Zone 6" then
			Zone6()
		end
	end
	if isNoon() and getPokemonNature(1) ~= synch2 then
		return swapPokemon(synchIndex2, synchIndex1)
	elseif isNoon() and getPokemonNature(1) == synch2 then
	
		--KANTO Region
		if huntMap2 == "Area 1" then
			AreaOne()
		elseif huntMap2 == "Area 2" then
			AreaTwo()
		elseif huntMap2 == "Area 3" then
			AreaThree()
		elseif huntMap2 == "Exclusive" then
			Exclusive()
			
		--JOHTO Region
		elseif huntMap2 == "GrassandSwamp" then
            GsMap()
        elseif huntMap2 == "Mountain" then
            MtMap()
        elseif huntMap2 == "Snow" then
            SnMap()
        elseif huntMap2 == "Wet" then
            WetMap()
			
		--HOENN Region
		elseif huntMap2 == "Zone 1" then
			Zone1()
		elseif huntMap2 == "Zone 2" then
			Zone2()
		elseif huntMap2 == "Zone 3" then
			Zone3()
		elseif huntMap2 == "Zone 4" then
			Zone4()
		elseif huntMap2 == "Zone 5" then
			Zone5()
		elseif huntMap2 == "Zone 6" then
			Zone6()
		end
	end
	if isNight() and getPokemonNature(1) ~= synch3 then
		return swapPokemon(synchIndex2, synchIndex3)
	elseif isNight() and getPokemonNature(1) == synch3 then
	
		--KANTO Region
		if huntMap3 == "Area 1" then
			AreaOne()
		elseif huntMap3 == "Area 2" then
			AreaTwo()
		elseif huntMap3 == "Area 3" then
			AreaThree()
		elseif huntMap3 == "Exclusive" then
			Exclusive()
			
		--JOHTO Region
		elseif huntMap3 == "GrassandSwamp" then
            GsMap()
        elseif huntMap3 == "Mountain" then
            MtMap()
        elseif huntMap3 == "Snow" then
            SnMap()
        elseif huntMap3 == "Wet" then
            WetMap()
			
		--HOENN Region
		elseif huntMap3 == "Zone 1" then
			Zone1()
		elseif huntMap3 == "Zone 2" then
			Zone2()
		elseif huntMap3 == "Zone 3" then
			Zone3()
		elseif huntMap3 == "Zone 4" then
			Zone4()
		elseif huntMap3 == "Zone 5" then
			Zone5()
		elseif huntMap3 == "Zone 6" then
			Zone6()
		end
	end
	
	elseif synch1 == synch3 and synch2 == synch3 then
	
	if isMorning() and getPokemonNature(1) == synch1 then
	
		--KANTO Region
		if huntMap1 == "Area 1" then
			AreaOne()
		elseif huntMap1 == "Area 2" then
			AreaTwo()
		elseif huntMap1 == "Area 3" then
			AreaThree()
		elseif huntMap1 == "Exclusive" then
			Exclusive()
			
		--JOHTO Region
		elseif huntMap1 == "GrassandSwamp" then
            GsMap()
        elseif huntMap1 == "Mountain" then
            MtMap()
        elseif huntMap1 == "Snow" then
            SnMap()
        elseif huntMap1 == "Wet" then
            WetMap()
			
		--HOENN Region
		elseif huntMap1 == "Zone 1" then
			Zone1()
		elseif huntMap1 == "Zone 2" then
			Zone2()
		elseif huntMap1 == "Zone 3" then
			Zone3()
		elseif huntMap1 == "Zone 4" then
			Zone4()
		elseif huntMap1 == "Zone 5" then
			Zone5()
		elseif huntMap1 == "Zone 6" then
			Zone6()
		end
	end
	if isNoon() and getPokemonNature(1) == synch2 then
		
		--KANTO Region
		if huntMap2 == "Area 1" then
			AreaOne()
		elseif huntMap2 == "Area 2" then
			AreaTwo()
		elseif huntMap2 == "Area 3" then
			AreaThree()
		elseif huntMap2 == "Exclusive" then
			Exclusive()
			
		--JOHTO Region
		elseif huntMap2 == "GrassandSwamp" then
            GsMap()
        elseif huntMap2 == "Mountain" then
            MtMap()
        elseif huntMap2 == "Snow" then
            SnMap()
        elseif huntMap2 == "Wet" then
            WetMap()
				
		--HOENN Region
		elseif huntMap2 == "Zone 1" then
			Zone1()
		elseif huntMap2 == "Zone 2" then
			Zone2()
		elseif huntMap2 == "Zone 3" then
			Zone3()
		elseif huntMap2 == "Zone 4" then
			Zone4()
		elseif huntMap2 == "Zone 5" then
			Zone5()
		elseif huntMap2 == "Zone 6" then
			Zone6()
		end
	end
	if isNight() and getPokemonNature(1) == synch3 then
	
		--KANTO Region
		if huntMap3 == "Area 1" then
			AreaOne()
		elseif huntMap3 == "Area 2" then
			AreaTwo()
		elseif huntMap3 == "Area 3" then
			AreaThree()
		elseif huntMap3 == "Exclusive" then
			Exclusive()
			
		--JOHTO Region
		elseif huntMap3 == "GrassandSwamp" then
            GsMap()
        elseif huntMap3 == "Mountain" then
            MtMap()
        elseif huntMap3 == "Snow" then
            SnMap()
        elseif huntMap3 == "Wet" then
            WetMap()
				
		--HOENN Region
		elseif huntMap3 == "Zone 1" then
			Zone1()
		elseif huntMap3 == "Zone 2" then
			Zone2()
		elseif huntMap3 == "Zone 3" then
			Zone3()
		elseif huntMap3 == "Zone 4" then
			Zone4()
		elseif huntMap3 == "Zone 5" then
			Zone5()
		elseif huntMap3 == "Zone 6" then
			Zone6()
		end
	end
	
	end
	
end
