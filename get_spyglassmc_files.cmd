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
if /I "%~2" equ "" (
    goto :exit
) else if /I "%~2" equ "--download-now" (
    download_files.cmd "%~1"
    goto :exit
) else (
    goto :error
)
:exit
popd
exit /b 0
:error
echo.参数：get_spyglassmc_files.cmd ^<version^> [--download-now]
popd
exit /b 1