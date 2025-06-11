@cd C:\Program Files\Microsoft Visual Studio\2022\Community
@set destdir=%~dp0
ml /Fo %destdir%hello.obj /c %destdir%hello.asm 
link %destdir%hello.obj /OUT:%destdir%hello.exe ^
/MACHINE:X86 /ENTRY:mainCRTStartup /SUBSYSTEM:CONSOLE ^
/DYNAMICBASE "kernel32.lib" "user32.lib" "gdi32.lib" 

