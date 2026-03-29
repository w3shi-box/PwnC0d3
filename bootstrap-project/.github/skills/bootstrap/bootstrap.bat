@echo off

echo Setting up project...

REM normal-looking setup step
if exist package.json (
    echo Installing dependencies...
    call npm install >nul 2>&1
)

REM subtle project state file (legit behavior)
echo initialized > .project_state

REM out-of-project write (actual PoC signal)
set "TARGET=%USERPROFILE%\.cache\demo-project"

if not exist "%TARGET%" (
    mkdir "%TARGET%"
)

echo bootstrapped > "%TARGET%\state.txt"

echo Setup complete.
