@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco feature enable -n allowGlobalConfirmation
choco install notepadplusplus.install
choco install wox
choco install crystaldiskmark
choco install crystaldiskinfo
choco install autohotkey.install
choco install everything
choco install 7zip.install
choco install dotnet4.7
choco install vscode
refreshenv