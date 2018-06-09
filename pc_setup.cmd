@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
choco feature enable -n allowGlobalConfirmation
choco install notepadplusplus
choco install wox
choco install crystaldiskmark
choco install crystaldiskinfo
choco install autohotkey
choco install everything
choco install 7zip
choco install dotnet4.7
choco install vscode
choco install git /NoShellIntegration
choco install pia
choco install qbittorrent
choco install vlc
refreshenv

git config --global user.name = "Carl Meyertons"
git config --global user.email = "carlmeyertons@gmail.com"

ssh-keygen -t rsa -b 4096 -C "carlmeyertons@gmail.com"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa

