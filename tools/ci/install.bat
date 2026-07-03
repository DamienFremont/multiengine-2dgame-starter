@REM file: install.bat

@REM Vars
set REPO_PATH=C:\Users\damien\git\multiengine-2dgame-starter
set BUILD_PATH=%REPO_PATH%\build\

set BUILD_DEV=%BUILD_PATH%\dev
set BUILD_RELEASE=%BUILD_PATH%\releases

if not exist %BUILD_DEV% mkdir %BUILD_DEV%\dev
if not exist %BUILD_RELEASE% mkdir %BUILD_RELEASE%\releases
