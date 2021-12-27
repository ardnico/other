echo $expa = ^"%1^".split(".")[-1] > base64.ps1
echo $base64 = [Convert]::ToBase64String([System.Io.File]::ReadAllBytes( "%1" )) >> base64.ps1
echo write-output("![alt](data:image/$expa;base64,$base64)") ^> base64line.txt >> base64.ps1
powershell -ExecutionPolicy Bypass -C ".\base64.ps1"
del ".\base64.ps1"
.\base64line.txt
del .\base64line.txt