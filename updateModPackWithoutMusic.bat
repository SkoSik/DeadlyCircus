@echo off
echo Delete old files
@RD /S /Q "./BepInEx/plugins"
@RD /S /Q "./BepInEx/config"
echo Loading the modpack
echo RED ERRORS ARE NORMAL
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/SkoSik/DeadlyCompany/releases/download/Release/LethalCompanyWithoutMusic.zip', 'modpack.zip')"
powershell -command "Expand-Archive modpack.zip ."
del ".\modpack.zip"
