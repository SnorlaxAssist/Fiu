--[====[Generated by CreateTests.lua]====]
return function()
	return [[Function 0 (??):
    1: local a = table.isfrozen({}) -- no propagate pls >:c
GETIMPORT R0 2 [table.isfrozen]
REMARK allocation: table hash 0
NEWTABLE R1 0 0
CALL R0 1 1
REMARK builtin math.floor/1
    2: local b = math.floor(15)
LOADN R2 15
FASTCALL1 12 R2 L0
GETIMPORT R1 5 [math.floor]
CALL R1 1 1
REMARK builtin math.floor/1
    3: local c = math.floor(25)
L0: LOADN R3 25
FASTCALL1 12 R3 L1
GETIMPORT R2 5 [math.floor]
CALL R2 1 1
    4: print(a and b)
L1: GETIMPORT R3 7 [print]
AND R4 R0 R1
CALL R3 1 0
    5: print(a or c)
GETIMPORT R3 7 [print]
OR R4 R0 R2
CALL R3 1 0
    6: 
RETURN R0 0

]]
end