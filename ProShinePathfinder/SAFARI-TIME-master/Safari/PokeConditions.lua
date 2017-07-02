local falseswiper = nil
local sleeper = nil
local synchro = nil
local sleepMoves = {"Sleep Powder", "Hypnosis", "Spore", "Yawn", "Sing"}

function getPokemonNumberWithMove(move)
    for i = 1, getTeamSize() do
        if hasMove(i, move) then
            return i
        end
    end
    return nil
end

function getPokemonNumberOfSynch(Nat)
    for i = 1, getTeamSize() do
        if getPokemonNature(i, Nat) then
            return i
        end
    end
    return nil
end

if multipleCatch == true then
	return synchro == getPokemonNumberOfSynch("Synchronize")
end

if advanceCatchOn == true then
	
	return falseswiper == getPokemonNumberWithMove("False Swipe") and sleeper == getPokemonNumberWithMove(sleepMoves)

	
elseif fswipeOn == true then

	return falseswiper == getPokemonNumberWithMove("False Swipe")
	
	
elseif sleepOnOn == true then
	
	return sleeper == getPokemonNumberWithMove(sleepMoves)
	
	
end

for _,sleepMoves in pairs(sleepMoves) do
  sleeMoves = sleepMoves
    break
end
 
