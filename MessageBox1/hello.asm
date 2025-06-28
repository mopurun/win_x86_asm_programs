; hello.asm
.586
.model flat, stdcall
 
NULL		EQU	0
MB_OK		EQU	0
 
MessageBoxA	proto :dword, :dword, :dword, :dword
ExitProcess	proto :dword
 
.data
CAPTION		DB 'Hello!', 0
TEXT		DB 'hello, world', 0
 
.code
mainCRTStartup	proc
	invoke MessageBoxA, NULL, offset TEXT, offset CAPTION, MB_OK
	invoke ExitProcess, 0
	
mainCRTStartup	endp
end
