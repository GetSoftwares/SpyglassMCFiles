@echo off
pushd "%~dp0"
curl -X GET https://api.spyglassmc.com/mcje/versions -o versions.json
get_versions.py
popd
exit /b 0