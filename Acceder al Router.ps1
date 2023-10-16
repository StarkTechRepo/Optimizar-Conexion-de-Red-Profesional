# obtiene la dirección IP de la puerta de enlace predeterminada y abre el navegador web con esa dirección.
$gatewayIP = (Get-NetRoute | Where-Object { $_.DestinationPrefix -eq '0.0.0.0/0' }).NextHop
Start-Process "http://$gatewayIP"
