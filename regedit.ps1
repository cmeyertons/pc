# https://www.windowscentral.com/how-permanently-disable-windows-defender-windows-10
$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender"
$name = "DisableAntiSpyware"
$value = 1
$isExists = $false
try {
	Get-ItemProperty -Path $path -Name $name
	$isExists = $true
}
catch { }
echo "$isExists"

if ($isExists -eq $false) {
	New-ItemProperty -Path $path -Name $name -PropertyType "DWORD" -Value $value
} else {
	Set-ItemProperty -Path $path -Name $name -Value $value
}
