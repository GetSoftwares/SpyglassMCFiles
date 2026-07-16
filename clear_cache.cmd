@echo off
pushd "%~dp0"
rd cache /S /Q
popd
exit /b 0