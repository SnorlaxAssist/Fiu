--[====[Generated by CreateTests.lua]====]
return function()
	return [[Function 0 (??):
    4:         print(i)
GETIMPORT R0 1 [print]
GETUPVAL R1 0
CALL R0 1 0
    5:     end
RETURN R0 0

Function 1 (??):
REMARK allocation: table hash 0
    1: local functions = {}
NEWTABLE R0 0 10
    2: for i = 1, 10 do
LOADN R3 1
LOADN R1 10
LOADN R2 1
FORNPREP R1 L1
REMARK allocation: closure with 1 upvalues
    3:     functions[i] = function()
L0: NEWCLOSURE R4 P0
CAPTURE VAL R3
SETTABLE R4 R0 R3
    2: for i = 1, 10 do
FORNLOOP R1 L0
    7: functions[2]()
L1: GETTABLEN R1 R0 2
CALL R1 0 0
    8: functions[9]()
GETTABLEN R1 R0 9
CALL R1 0 0
    9: 
RETURN R0 0

]]
end