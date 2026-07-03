@REM file: dev-godot4.bat

@REM Vars
set GODOT=C:\apps\Godot_v4.7-stable_mono_win64\Godot_v4.7-stable_mono_win64.exe
set REPO_PATH=C:\Users\damien\git\multiengine-2dgame-starter
set PROJECT_PATH=%REPO_PATH%\standalone\godot4
set COMPILE_CFG=%PROJECT_PATH%\ProjectMuzeumCardsLine.csproj

set BUILD_PATH=%REPO_PATH%\build\dev

@REM Build Release "Windows (No SDK)"
set PROJECT_EXPORT=Windows (No SDK)
set PROJECT_EXPORT_DIR=%BUILD_PATH%\win
set PROJECT_EXPORT_PATH=%PROJECT_EXPORT_DIR%\ProjectMuzeumCardsLine.exe
if not exist %PROJECT_EXPORT_DIR% mkdir %PROJECT_EXPORT_DIR%
%GODOT% --headless --path "%PROJECT_PATH%" --export-debug "%PROJECT_EXPORT%" "%PROJECT_EXPORT_PATH%"
