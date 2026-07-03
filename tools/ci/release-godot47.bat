@REM Params
set VERSION=0.1.0
set TIMESTAMP=%DATE:~-4%%DATE:~4,2%%DATE:~7,2%_%time:~-11,2%%time:~-8,2%%time:~-5,2%

@REM Vars
set GODOT=C:\apps\Godot_v4.7-stable_mono_win64\Godot_v4.7-stable_mono_win64.exe
set REPO_PATH=C:\Users\damien\git\project-2048-remaster
set PROJECT_PATH=%REPO_PATH%\standalone\app
set COMPILE_CFG=%PROJECT_PATH%\Cars2028.csproj
set COMPILE_CFG_NATIVE=%COMPILE_CFG%.backup.native
set COMPILE_CFG_MONO=%COMPILE_CFG%.backup.mono

set BUILD_PATH=%REPO_PATH%\build\releases

@REM Clean
@REM RMDIR /S /Q "%BUILD_PATH%"

@REM Build Release "Itch.io"
set PROJECT_EXPORT=Windows (Itch.io)
set PROJECT_EXPORT_DIR=%BUILD_PATH%\%TIMESTAMP%-%VERSION%-win-itchio
set PROJECT_EXPORT_PATH=%PROJECT_EXPORT_DIR%\Cars2028.exe
copy "%COMPILE_CFG_NATIVE%" "%COMPILE_CFG%"

if not exist %PROJECT_EXPORT_DIR% mkdir %PROJECT_EXPORT_DIR%
%GODOT% --headless --path "%PROJECT_PATH%" --export-release "%PROJECT_EXPORT%" "%PROJECT_EXPORT_PATH%"

@REM Build Release "Steam"
set PROJECT_EXPORT=Windows (Steam)
set PROJECT_EXPORT_DIR=%BUILD_PATH%\%TIMESTAMP%-%VERSION%-win-steam
set PROJECT_EXPORT_PATH=%PROJECT_EXPORT_DIR%\Cars2028.exe
copy "%COMPILE_CFG_NATIVE%" "%COMPILE_CFG%"

if not exist %PROJECT_EXPORT_DIR% mkdir %PROJECT_EXPORT_DIR%
%GODOT% --headless --path "%PROJECT_PATH%" --export-release "%PROJECT_EXPORT%" "%PROJECT_EXPORT_PATH%"

@REM Build Release "GooglePlay"
set PROJECT_EXPORT=Android (GooglePlay)
set PROJECT_EXPORT_DIR=%BUILD_PATH%\%TIMESTAMP%-%VERSION%-android-googleplay
set PROJECT_EXPORT_PATH=%PROJECT_EXPORT_DIR%\com.damienfremont.cars2048anniversary-%VERSION%.aab
copy "%COMPILE_CFG_MONO%" "%COMPILE_CFG%"

if not exist %PROJECT_EXPORT_DIR% mkdir %PROJECT_EXPORT_DIR%
%GODOT% --headless --path "%PROJECT_PATH%" --export-release "%PROJECT_EXPORT%" "%PROJECT_EXPORT_PATH%"

@REM Clean
copy "%COMPILE_CFG_MONO%" "%COMPILE_CFG%"
