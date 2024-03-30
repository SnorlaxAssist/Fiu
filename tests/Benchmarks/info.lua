local function getLuaVersion()
	local f = function()
		return function() end
	end

	if 0xffffffffffffffffffffffffffffffffffffffffffffff == 2 ^ 64 then
		return "Luau"
	end

	if ({nil,[1] = true})[1] then
		return "LuaJIT"
	end

	if 1/0 == 1/"-0" then
		return ("1" + "2").."" == "3.0" and "Lua 5.3" or "Lua 5.4"
	end

	return f() == f() and "Lua 5.2" or "Lua 5.1"
end

local function getOptimizeLevel()
	local function dupclosure()
		return function() end
	end

	local O0 = dupclosure() ~= dupclosure() 

	local function inlinefunction()
		return debug.info(1, "f")
	end

	local f = debug.info(1, "f")

	local O2 = f == inlinefunction()

	return if O0 then "O0" else (O2 and "O2" or "O1")
end

OK(`Optimization Level: {getOptimizeLevel()} | Lua Version: {getLuaVersion()}`)
