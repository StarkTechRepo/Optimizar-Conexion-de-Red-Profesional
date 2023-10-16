@echo off
title cambiar el MTU

echo Cambiando el MTU
netsh interface ipv4 set subinterface "Conexión de red" mtu=1500 store=persistent
echo El MTU se ha cambiado

pause
