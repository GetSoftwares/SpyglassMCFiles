@echo off
pushd "%~dp0"
build_mcversions_csv.py
popd
exit /b 0