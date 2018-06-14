Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

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
choco install boxsync
refreshenv

npm install -g @angular/cli

git config --global user.name = "Carl Meyertons"
git config --global user.email = "carlmeyertons@gmail.com"
# workaround for github desktop defaulting to HTTPS...
git config --global url."git@github.com:".insteadOf https://github.com/

# generate SSH key (may need to be done in bash script)
$sshKeyGenPath = ";C:\Program Files\Git\usr\bin"

if ($env:Path.Contains($sshKeyGenPath) -eq $false)
{
	$env:Path = $env:Path + $sshKeyGenPath
}

ssh-keygen -t rsa -b 4096 -C "carlmeyertons@gmail.com"
eval $(ssh-agent -s)
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub | clip
echo "Github key copied to clipboard and ready to paste"

# open a bunch of stuff
start https://github.com/settings/ssh/new
start https://aka.ms/azureml-wb-msi
start https://www.visualstudio.com/downloads/
code
