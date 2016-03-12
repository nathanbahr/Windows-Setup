Set-ExecutionPolicy Unrestricted

Set-NetConnectionProfile -InterfaceAlias Wi-Fi -NetworkCategory Private
Enable-PSRemoting

Update-Help -Force