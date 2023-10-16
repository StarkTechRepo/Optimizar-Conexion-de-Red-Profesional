$gatewayIP = (Get-NetRoute | Where-Object { $_.DestinationPrefix -eq '0.0.0.0/0' }).NextHop
$gatewayIP
Read-Host -Prompt "Presiona Enter para salir..."

