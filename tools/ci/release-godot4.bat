@REM file: release-godot4.bat

@REM Params
set VERSION=0.1.0
set TIMESTAMP=%DATE:~-4%%DATE:~4,2%%DATE:~7,2%_%time:~-11,2%%time:~-8,2%%time:~-5,2%

@REM Vars
set GODOT=C:\apps\Godot_v4.7-stable_mono_win64\Godot_v4.7-stable_mono_win64.exe
set REPO_PATH=C:\Users\damien\git\multiengine-2dgame-starter
set PROJECT_PATH=%REPO_PATH%\standalone\godot4
set COMPILE_CFG=%PROJECT_PATH%\ProjectMuzeumCardsLine.csproj

set BUILD_PATH=%REPO_PATH%\build\releases

@REM Build Release "Steam"
set PROJECT_EXPORT=Windows (Steam)
set PROJECT_EXPORT_DIR=%BUILD_PATH%\%TIMESTAMP%-%VERSION%-win-steam
set PROJECT_EXPORT_PATH=%PROJECT_EXPORT_DIR%\ProjectMuzeumCardsLine.exe
if not exist %PROJECT_EXPORT_DIR% mkdir %PROJECT_EXPORT_DIR%
%GODOT% --headless --path "%PROJECT_PATH%" --export-release "%PROJECT_EXPORT%" "%PROJECT_EXPORT_PATH%"
