Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

start https://aka.ms/azureml-wb-msi
start https://www.visualstudio.com/downloads/

choco feature enable -n allowGlobalConfirmation
choco install notepadplusplus
choco install wox
# choco install crystaldiskmark
# choco install crystaldiskinfo
choco install autohotkey
choco install everything
choco install 7zip
choco install vscode
choco install git
choco install pia
# choco install qbittorrent
choco install vlc
choco install google-backup-and-sync
choco install github
choco install terraform
choco install azure-cli
refreshenv

git config --global user.name = "Carl Meyertons"
git config --global user.email = "carlmeyertons@gmail.com"
# workaround for github desktop defaulting to HTTPS...
git config --global url."git@github.com:".insteadOf https://github.com/

# generate SSH key (may need to be done in bash script)
[Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\Program Files\Git\usr\bin", [EnvironmentVariableTarget]::User)
refreshenv
ssh-keygen -t rsa -b 4096 -C "carlmeyertons@gmail.com"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub | clip
echo "Github key copied to clipboard and ready to paste"
start https://github.com/settings/ssh/new
