:: download 7zip
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('http://www.7-zip.org/a/7z920-x64.msi', 'C:\Windows\Temp\7z920-x64.msi')" <NUL
:: install 7zip
msiexec /qb /i C:\Windows\Temp\7z920-x64.msi
:: download latest tools
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://packages.vmware.com/tools/releases/10.1.7/windows/VMware-tools-windows-10.1.7-5541682.iso', 'C:\Windows\Temp\vmware-tools.iso')" <NUL
:: unzip tools iso
cmd /c ""C:\Program Files\7-Zip\7z.exe" x "C:\Windows\Temp\vmware-tools.iso" -oC:\Windows\Temp\VMware"
:: install vmware tools
cmd /c C:\Windows\Temp\VMware\setup.exe /S /v"/qn REBOOT=R\"
:: uninstall 7zip
msiexec /qb /x C:\Windows\Temp\7z920-x64.msi
