
$Advanced = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced'
Set-ItemProperty $Advanced AutoCheckSelect 0

$Wallpaper = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Wallpapers'
Set-ItemProperty $Wallpaper BackgroundHistoryPath0 'C:\Windows\web\wallpaper\Windows\img0.jpg'

Stop-Process -processname explorer