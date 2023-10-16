# obtiene la dirección IP de la puerta de enlace predeterminada,
# la muestra en la pantalla y espera hasta que el usuario presione Enter para salir.
$gatewayIP = (Get-NetRoute | Where-Object { $_.DestinationPrefix -eq '0.0.0.0/0' }).NextHop

# Muestra la dirección IP de la puerta de enlace en la pantalla
$gatewayIP

# Espera a que el usuario presione Enter antes de salir
Read-Host -Prompt "Presiona Enter para salir..."

