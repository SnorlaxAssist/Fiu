--[====[Generated by CreateTests.lua v2]====]
return function()
	return [====[Function 0 (??):
REMARK allocation: table hash 0
    1: local t = {}
NEWTABLE R0 0 1
    2: t[1] = 1
LOADN R1 1
SETTABLEN R1 R0 1
    3: local v = t[1]
GETTABLEN R1 R0 1
    4: t["hash"] = 1
LOADN R2 1
SETTABLEKS R2 R0 K0 ['hash']
    5: local k = t["hash"]
GETTABLEKS R2 R0 K0 ['hash']
REMARK allocation: table hash 0
    6: t[t] = {}
NEWTABLE R3 0 0
SETTABLE R3 R0 R0
    7: local n = t[t]
GETTABLE R3 R0 R0
    8: print(t,v,k,n)
GETIMPORT R4 2 [print]
MOVE R5 R0
MOVE R6 R1
MOVE R7 R2
MOVE R8 R3
CALL R4 4 0
    9: 
RETURN R0 0

]====]
end