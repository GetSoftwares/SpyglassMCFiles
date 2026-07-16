@echo off
if /I "%PROCESSOR_ARCHITECTURE%" equ "AMD64" (
    bz.x64.exe %*
) else if /I "%PROCESSOR_ARCHITECTURE%" equ "x86" (
    bz.x86.exe %*
) else (
    bz.x86.exe %*
)