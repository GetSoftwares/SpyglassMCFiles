@echo off
chcp 65001>NUL
pushd "%~dp0"
set MC_VERSION=%~1
if not defined MC_VERSION set /P MC_VERSION=你需要下载什么版本的文件：
if not defined MC_VERSION (
    echo.你没有输入版本。请再试一次。
    exit /b 1
)
findstr /I /C:"%MC_VERSION%" verisons.txt 1>NUL 2>NUL
if %ERRORLEVEL% neq 0 (
    echo.找不到版本 %MC_VERSION%。
    exit /b 1
)
mkdir logs 1>NUL 2>NUL
aria2c -x4 -j4 -s1 -c -R -d. -i%MC_VERSION%.txt 1>logs\%MC_VERSION%.log 2>&1
popd
exit /b 0