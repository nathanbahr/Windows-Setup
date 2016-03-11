
$pass = Read-Host 'Please choose a password for the administrator account' -AsSecureString
$confirm = Read-Host 'Confirm password' -AsSecureString
$passBSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pass) 
$confirmBSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($confirm) 
$passPlain = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($passBSTR) 
$confirmPlain = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($confirmBSTR)


    If ($passPlain -eq $confirmPlain) {
        net user Admin $passPlain /add
        net localgroup administrators Admin /add
    }
    Else {
        throw 'The passwords entered do not match!'
    }
$Pass,$confirm,$PassBSTR,$ConfirmBSTR,$ConfirmPlain,$PassPlain = $null


$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyUp")