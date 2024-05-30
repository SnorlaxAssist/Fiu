--!ctx Luau

local ok, compileResult = Luau.compile([[
local shadow = {
	c = 3
}
local cIndex = (function()
	return ("v"):gsub("v", "c")
end)()
assert(shadow.a == 1, "Invalid PropertyHook Override GETTABLEKS")
assert(rawget(shadow, "a") == nil, "Invalid PropertyHook Override GETTABLEKS #2")
assert(shadow[2] == 4, "Invalid PropertyHook Override GETTABLEN")
assert(rawget(shadow, 2) == nil, "Invalid PropertyHook Override GETTABLEN #2")
assert(shadow[cIndex] == 3, "Invalid PropertyHook Override GETTABLE")
assert(shadow[cIndex] == nil, "Invalid PropertyHook Override GETTABLE #2")
assert(rawget(shadow, cIndex) == 3, "Invalid PropertyHook Override GETTABLE #3")
assert(rawget(shadow, cIndex) == 3, "Invalid PropertyHook Override GETTABLE #4")

shadow.a = "test"
assert(shadow.a == 1, "Invalid PropertyHook Override SETTABLEKS")
assert(shadow.a2 == 8, "Invalid PropertyHook Override SETTABLEKS #2")
assert(rawget(shadow, "a") == "foo", "Invalid PropertyHook Override SETTABLEKS #3")

shadow[cIndex] = 5
assert(shadow[cIndex] == 5, "Invalid PropertyHook Override SETTABLE")
assert(shadow[cIndex] == nil, "Invalid PropertyHook Override SETTABLE #2")

assert(Bar == 345, "Invalid PropertyHook Override GETGLOBAL")
Bar = "foo"
assert(Bar == "fuzz", "Invalid PropertyHook Override SETGLOBAL")
]], {
	optimizationLevel = 2,
	debugLevel = 2,
	coverageLevel = 0,
	vectorLib = nil,
	vectorCtor = nil,
	vectorType = nil
})

if not ok then
	error(compileResult)
end

local settings = Fiu.luau_newsettings()
local FiuEnum = Fiu.enums

local propertyCalled = false
local cOverride = false
local variableOnce = false
settings.callHooks.propertyHook = function(mode, context, target, index, value)
	propertyCalled = true;
	if mode == FiuEnum.RequestType.Get then
		if context == FiuEnum.ContextType.Global then
			if index == "Bar" then
				variableOnce = not variableOnce
				if not variableOnce then
					return FiuEnum.Continuation.Continue -- no override
				end
				return 345
			end
		elseif context == FiuEnum.ContextType.Table then
			if index == "a" then
				return 1
			elseif index == 2 then
				return 4
			elseif index == "c" then
				cOverride = not cOverride
				if not cOverride then
					return nil
				end
			end
		end
	elseif mode == FiuEnum.RequestType.Set then
		if context == FiuEnum.ContextType.Global then
			if index == "Bar" then
				return "fuzz"
			end
		elseif context == FiuEnum.ContextType.Table then
			if index == "a" then
				target[index .. "2"] = 8
				return "foo"
			end
		end
	end
	return FiuEnum.Continuation.Continue -- no override
end

local func, _ = Fiu.luau_load(Fiu.luau_deserialize(compileResult), {assert = assert, rawget = rawget}, settings)

assert(propertyCalled == false, "Property hook was called before the function was executed")

func()

assert(propertyCalled, "Property hook was not called")

OK()
