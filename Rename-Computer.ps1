
$hostname = Read-Host 'What would you like to call this computer?'

Rename-Computer -NewName $hostname -Restart