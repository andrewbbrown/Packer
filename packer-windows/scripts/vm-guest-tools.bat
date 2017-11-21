:: download 7zip
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://www.7-zip.org/a/7z920-x64.msi', 'C:\Windows\Temp\7z920-x64.msi')" <NUL

:: install 7zip
msiexec /qb /i C:\Windows\Temp\7z920-x64.msi

:: download latest tools
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://softwareupdate.vmware.com/cds/vmw-desktop/ws/12.0.0/2985596/windows/packages/tools-windows.tar', 'C:\Windows\Temp\vmware-tools.iso')" <NUL

:: unzip tools iso
cmd /c ""C:\Program Files\7-Zip\7z.exe" x "C:\Windows\Temp\vmware-tools.iso" -oC:\Windows\Temp\VMware"

:: isntall vmware tools
cmd /c C:\Windows\Temp\VMware\setup.exe /S /v"/qn REBOOT=R\"

::uninstall 7zip
msiexec /qb /x C:\Windows\Temp\7z920-x64.msi
