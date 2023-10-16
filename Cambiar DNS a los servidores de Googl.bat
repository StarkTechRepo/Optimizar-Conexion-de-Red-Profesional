@echo off
title Cambiar DNS a los servidores de Google 

echo Cambiando la configuración de DNS a los servidores de Google ...
netsh interface ipv4 set dns "Ethernet" static 8.8.8.8
netsh interface ipv4 add dns "Ethernet" 8.8.4.4 index=2
echo La configuración de DNS  se ha cambiado a los servidores de Google.

pause
