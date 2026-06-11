@echo off
setlocal

set "WAR_NAME=static-html-war-demo.war"
pushd "%~dp0"

where jar >nul 2>&1
if errorlevel 1 (
    echo jar command not found. Install a JDK and add it to PATH.
    popd
    exit /b 1
)

if exist "%WAR_NAME%" (
    echo Removing existing %WAR_NAME%
    del /q "%WAR_NAME%"
)

echo Creating %WAR_NAME%...
jar cvf "%WAR_NAME%" index.html sample-form.html style.css

echo WAR file created: %WAR_NAME%
popd
pause
