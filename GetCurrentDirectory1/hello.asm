; hello.asm
.586
.model flat, stdcall
 
NULL		EQU	0
MB_OK		EQU	0
 
GetCurrentDirectoryA proto :dword, :dword
MessageBoxA	proto :dword, :dword, :dword, :dword
ExitProcess	proto :dword
 
.data
title0 db 'output : ', 0
FileName db NULL
 
.code
mainCRTStartup	proc

    push offset FileName 
    push 80h   
    call GetCurrentDirectoryA ;

    push  0
    push  offset title0
    push  offset FileName
    push  0
    call MessageBoxA 

    push  0    
    call ExitProcess 
    ret

mainCRTStartup	endp
end