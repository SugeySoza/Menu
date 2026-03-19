@echo OFF
:MENU
cls
ECHO.
ECHO 1 - Mostrar la estructura de carpetas y archivos
ECHO 2 - Forzar cierre
ECHO 3 - Copiar archivos y directorios
ECHO 4 - Opcion pendiente
ECHO 5 - Opcion pendiente
ECHO 6 - Salir
ECHO.
SET /P opc="Selecciona una opcion: "

IF %opc%==1 GOTO MOSTRAR_CARPETAS_ARCHIVOS
IF %opc%==2 GOTO FORZAR_CIERRE
IF %opc%==3 GOTO COPIAR_ARCHIVOS_DIRECTORIOS
IF %opc%==4 GOTO OPCION_4
IF %opc%==5 GOTO OPCION_5
IF %opc%==6 GOTO END

echo opcion no valida 
pause
GOTO MENU

: MOSTRAR_CARPETAS_ARCHIVOS   
tree /F /A
pause
GOTO MENU

:FORZAR_CIERRE
taskkill /F /IM chrome.exe
pause
GOTO MENU

:COPIAR_ARCHIVOS_DIRECTORIOS
xcopy C:\Users\HP\Documents C:\Backup\Documents /E /I /Y
pause
GOTO MENU

:OPCION_4
echo Esta opcion no ha sido completada
pause
GOTO MENU

:OPCION_5
echo Esta opcion no ha sido completada
pause
GOTO MENU

:END
ECHO Fin
pause
exit
