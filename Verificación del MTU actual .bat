@echo off
title Verificación del MTU actual

echo Verificación del MTU Actual...
netsh interface ipv4 show subinterfaces
echo.

pause
