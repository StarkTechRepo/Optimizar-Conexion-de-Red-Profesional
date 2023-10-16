$gatewayIP = (Get-NetRoute | Where-Object { $_.DestinationPrefix -eq '0.0.0.0/0' }).NextHop
Start-Process "http://$gatewayIP"
