@echo off
title Obtener Puerta de Enlace 

echo Obteniendo la Puerta de Enlace...
ipconfig | findstr "Puerta de enlace predeterminada"
echo.

pause
