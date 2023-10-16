@echo off
title Desactivar la capacidad de ajuste automático de búferes de red

echo Desactivando la capacidad de ajuste automático de búferes de red...
netsh int tcp set global autotuninglevel=disabled
echo La capacidad de ajuste automático de búferes de red ha sido desactivada.

pause
