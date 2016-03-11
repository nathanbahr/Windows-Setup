Stop-Process -ProcessName Dropbox*

$packages = @("90150000-0138-0409-0000-0000000FF1CE","597A58EC-42D6-4940-8739-FB94491B013C","9ACDDC24-55FE-4E7A-B4BD-DD9761F2F8AB","DB82968B-57A4-4397-81A5-ECAB21B5DFCD","124DE80C-9BFE-4D04-A8D9-69C5019DEEBF","2E55EEFD-2162-4A7D-9158-EDB0305603A6","B96204EB-3051-4B4F-9534-ED13FE7095D1","AE5E3C86-2633-4DAF-A7F4-C43D1E738BAE","AB7F2792-2ED1-4C5C-9F28-680E5110BF72")
foreach($package in $packages){
$app = Get-WmiObject -Class Win32_Product | Where-Object {$_.IdentifyingNumber -match $package}
$app.Uninstall()
}

del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Dell\Dell Notification Center.lnk"
del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Dell\Product Registration.lnk"