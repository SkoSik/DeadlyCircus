@RD /S /Q "./BepInEx"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/SkoSik/DeadlyCompany/releases/download/Release/LethalCompany.zip', 'modpack.zip')"
powershell -command "Expand-Archive modpack.zip ."
del ".\modpack.zip"
