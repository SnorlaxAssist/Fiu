--[====[Generated by CreateTests.lua]====]
return function()
	return [[Function 0 (__PRIVATE__IB__CRASH_PREVENTION__):
    2: end
RETURN R0 0

Function 1 (__PRIVATE__IB__RETURN_VARARGS__):
    4:     __PRIVATE__IB__CRASH_PREVENTION__()
GETUPVAL R0 0
CALL R0 0 0
    5:     return ...
GETVARARGS R0 -1
RETURN R0 -1

Function 2 (??):
   17:     print 'hello world'
GETIMPORT R0 1 [print]
LOADK R1 K2 ['hello world']
CALL R0 1 0
   18: end)()
RETURN R0 0

Function 3 (??):
REMARK allocation: closure with 0 upvalues
    1: local function __PRIVATE__IB__CRASH_PREVENTION__()
NEWCLOSURE R0 P0
REMARK allocation: closure with 1 upvalues
    3: local function __PRIVATE__IB__RETURN_VARARGS__(...)
NEWCLOSURE R1 P1
CAPTURE VAL R0
    7: local __PRIVATE__IB__RAWSET__ = rawset
GETIMPORT R2 1 [rawset]
    8: local __PRIVATE__IB__SETMETATABLE__ = setmetatable
GETIMPORT R3 3 [setmetatable]
    9: local __PRIVATE__IB__SETFENV__ = setfenv
GETIMPORT R4 5 [setfenv]
REMARK builtin setmetatable/2
REMARK allocation: table hash 0
   10: local __PRIVATE__IB__VARARG_EXPR_WRAPPER__ = __PRIVATE__IB__SETMETATABLE__({}, { __index = __PRIVATE__IB__RETURN_VARARGS__, __newindex = __PRIVATE__IB__RETURN_VARARGS__, __add = __PRIVATE__IB__RETURN_VARARGS__, __sub = __PRIVATE__IB__RETURN_VARARGS__, __mul = __PRIVATE__IB__RETURN_VARARGS__, __div = __PRIVATE__IB__RETURN_VARARGS__, __mod = __PRIVATE__IB__RETURN_VARARGS__, __unm = __PRIVATE__IB__RETURN_VARARGS__, __concat = __PRIVATE__IB__RETURN_VARARGS__, __eq = __PRIVATE__IB__RETURN_VARARGS__, __lt = __PRIVATE__IB__RETURN_VARARGS__, __le = __PRIVATE__IB__RETURN_VARARGS__, __len = __PRIVATE__IB__RETURN_VARARGS__ })
NEWTABLE R6 0 0
REMARK allocation: table template 13
DUPTABLE R7 19
SETTABLEKS R1 R7 K6 ['__index']
SETTABLEKS R1 R7 K7 ['__newindex']
SETTABLEKS R1 R7 K8 ['__add']
SETTABLEKS R1 R7 K9 ['__sub']
SETTABLEKS R1 R7 K10 ['__mul']
SETTABLEKS R1 R7 K11 ['__div']
SETTABLEKS R1 R7 K12 ['__mod']
SETTABLEKS R1 R7 K13 ['__unm']
SETTABLEKS R1 R7 K14 ['__concat']
SETTABLEKS R1 R7 K15 ['__eq']
SETTABLEKS R1 R7 K16 ['__lt']
SETTABLEKS R1 R7 K17 ['__le']
SETTABLEKS R1 R7 K18 ['__len']
FASTCALL2 61 R6 R7 L0
MOVE R5 R3
CALL R5 2 1
   11: local __PRIVATE__IB__STRING_CHAR__ = string.char
L0: GETIMPORT R6 22 [string.char]
REMARK allocation: table hash 0
   12: local __PRIVATE__IB__CHARACTER_SET__ = {}
NEWTABLE R7 0 0
   13: for i = 0, 255 do
LOADN R10 0
LOADN R8 255
LOADN R9 1
FORNPREP R8 L3
REMARK builtin string.char/1
   14:     __PRIVATE__IB__CHARACTER_SET__[i] = __PRIVATE__IB__STRING_CHAR__(i)
L1: FASTCALL1 42 R10 L2
MOVE R12 R10
MOVE R11 R6
CALL R11 1 1
L2: SETTABLE R11 R7 R10
   13: for i = 0, 255 do
FORNLOOP R8 L1
REMARK allocation: closure with 0 upvalues
   16: return (function()
L3: NEWCLOSURE R8 P2
   18: end)()
CALL R8 0 -1
RETURN R8 -1

]]
end