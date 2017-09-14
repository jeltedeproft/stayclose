function relink(heroes)
	local max = table.getn(heroes)
	if max ~= 1 and max ~= 0 then
		for i=1,max, 1 do
			if not (i+1 > max) then
				local ability = heroes[i]:FindAbilityByName("wisp_tether_datadriven")
	   			heroes[i]:CastAbilityOnTarget(heroes[i+1], ability, heroes[i]:GetPlayerID())
	   		end
		end
	end
end

function delink(heroes)
	local max = table.getn(heroes)
	if max ~= 1 and max ~= 0 then
		for i=1,max, 1 do
			if not (i+1 > max) then
				local ability = heroes[i]:FindAbilityByName("wisp_tether_break_datadriven")
	   			heroes[i]:CastAbilityNoTarget(ability, heroes[i]:GetPlayerID())
	   		end
		end
	end
end

-- return the first integer index holding the value 
function AnIndexOf(t,val)
    for k,v in ipairs(t) do 
        if v == val then return k end
    end
end

-- return any key holding the value 
function AKeyOf(t,val)
    for k,v in pairs(t) do 
        if v == val then return k end
    end
end

-- return all keys holding the value
function AllKeysOf(t,val)
    local s={}
    for k,v in pairs(t) do 
        if v == val then s[#s+1] = k end
    end
    return s
end

-- invert a table so that each value is the key holding one key to that value 
-- in the original table.
function Invert(t)
    local i={}
    for k,v in pairs(t) do 
        i[v] = k
    end
    return i
end

