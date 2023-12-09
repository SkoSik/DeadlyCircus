@RD /S /Q "./BepInEx"
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://github.com/SkoSik/DeadlyCompany/archive/refs/heads/main.zip', 'modpack.zip')"
powershell -command "Expand-Archive modpack.zip ."
XCOPY /S/Q/Y DeadlyCompany-main .
@del ".\modpack.zip"
@RD /S /Q "./DeadlyCompany-main"