@echo off
pushd "%~dp0"
if /I "%~1" equ "" goto :error
(
    for %%a in (block_states commands registries) do (
        echo.https://api.spyglassmc.com/mcje/versions/%~1/%%a
        echo.  out=versions/%~1/%%a.json
        echo.
    )
    for %%a in (vanilla-assets-tiny vanilla-data) do (
        echo.https://api.spyglassmc.com/mcje/versions/%~1/%%a/tarball
        echo.  out=versions/%~1/%%a.tar.gz
        echo.
    )
) > %~1.txt
popd
exit /b 0
:error
popd
exit /b 1