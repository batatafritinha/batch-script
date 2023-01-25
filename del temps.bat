@echo off
cls
color a
chcp 65001

:menu
cls

echo.
echo Computador: %computername%        Usuario: %username%
echo.
echo ^+---------------------------------------------^+
echo ^|                MENU TAREFAS                 ^|
echo ^+---------------------------------------------^+
echo ^| 1. Esvaziar a Lixeira                       ^|
echo ^| 2. prefetch                                 ^|
echo ^| 3. temp                                     ^|
echo ^| 4. temp2                                    ^|
echo ^| 5. Sair                                     ^|
echo ^+---------------------------------------------^+
echo.

set /p opcao= Escolha uma opção: 

if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5

:opcao1
cls
:: desativado, remova :: para reativar
rd /S /Q c:\$Recycle.bin
echo ^+---------------------------------------------^+
echo ^|              Lixeira Esvaziada              ^|
echo ^+---------------------------------------------^+
pause
goto menu

:opcao2
cls
:: desativado, remova :: para reativar
dir /s "C:\Windows\Prefetch"
del /q "C:\Windows\Prefetch\*"
FOR /D %%p IN ("C:\Windows\Prefetch\*.*") DO rmdir "%%p" /s /q
echo ^+---------------------------------------------^+
echo ^|              Prefetch Deletado              ^|
echo ^+---------------------------------------------^+
pause
goto menu

:opcao3
cls
dir /s "C:\Windows\Temp"
del /q "C:\Windows\Temp*"
FOR /D %%p IN ("C:\Windows\Temp*.*") DO rmdir "%%p" /s /q
echo ^+---------------------------------------------^+
echo ^|                Temp Deletado                ^|
echo ^+---------------------------------------------^+
pause
goto menu

:opcao4
cls
dir /s "C:\Users\%username%\AppData\Local\Temp"
del /q "C:\Users\%username%\AppData\Local\Temp*"
FOR /D %%p IN ("C:\Users\%username%\AppData\Local\Temp*.*") DO rmdir "%%p" /s /q
echo ^+---------------------------------------------^+
echo ^|                 Temp2 Deletado              ^|
echo ^+---------------------------------------------^+
pause
goto menu

:opcao5
cls
echo ^+---------------------------------------------^+
echo ^|            Adeus e nunca mais volte         ^|
echo ^+---------------------------------------------^+
pause
exit
goto menu