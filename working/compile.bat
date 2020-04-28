@echo off

cd\
cd D:\QuakeDev\working


echo Copying Files...
copy D:\QuakeDev\id1\maps\trap.map D:\QuakeDev\working


echo Converting map...


echo --------------QBSP--------------
D:\QuakeDev\tools\ericw-tools\bin\qbsp.exe trap

echo --------------VIS---------------
D:\QuakeDev\tools\ericw-tools\bin\vis.exe trap

echo -------------LIGHT--------------
D:\QuakeDev\tools\ericw-tools\bin\light.exe trap

copy trap.bsp D:\QuakeDev\id1\maps
copy trap.pts D:\QuakeDev\id1\maps
copy trap.lit D:\QuakeDev\id1\maps
pause
cd\
cd D:\QuakeDev
quakespasm  +map trap
