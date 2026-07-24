@echo off
if /I "%PROCESSOR_ARCHITECTURE%" equ "AMD64" (
    bz.x64.exe %* 1>NUL
) else if /I "%PROCESSOR_ARCHITECTURE%" equ "x86" (
    bz.x86.exe %* 1>NUL
) else (
    bz.x86.exe %* 1>NUL
)