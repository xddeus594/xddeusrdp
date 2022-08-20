Hostet File:
Set-LocalUser -Name "Administrator" -Password(ConvertTo-SecureString -AsPlainText "@rdpbyav321" -Force)
Get-LocalUser -Name "Administrator" |Enable-LocalUser
Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
tar xf ngrok.zip
copy ngrok.exe C:\Windows\system32
cmd /c echo ./ngrok.exe authtoken "2DdTwfLeSTXdwvmYa1hR23pkxuM_5k2PCZHLDBZY3VEdHz8aN" >a.psl
cmd /c echo cmd /k start ngrok.exe tcp 3339 >>a.psl
cmd /c echo ping -n 999999 10.10.10.10 >>a.psl
.\a.psl
