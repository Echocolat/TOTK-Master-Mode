@echo off

:: Set mod folder paths
set MOD1="C:\Users\lezen\Desktop\Alex\GitHub\TOTK-Master-Mode\Packaged\Challenge Mode 1.3.5 for v1.1.0 (Base)"
set MOD2="C:\Users\lezen\Desktop\Alex\GitHub\TOTK-Master-Mode\Packaged\Challenge Mode 1.3.5 for v1.1.0 (Recommended)"
set MOD3="C:\Users\lezen\Desktop\Alex\GitHub\TOTK-Master-Mode\Packaged\Challenge Mode 1.3.5 for v1.1.1 (Base)"
set MOD4="C:\Users\lezen\Desktop\Alex\GitHub\TOTK-Master-Mode\Packaged\Challenge Mode 1.3.5 for v1.1.1 (Recommended)"
set MOD5="C:\Users\lezen\Desktop\Alex\GitHub\TOTK-Master-Mode\Packaged\Challenge Mode 1.3.5 for v1.1.2 (Base)"
set MOD6="C:\Users\lezen\Desktop\Alex\GitHub\TOTK-Master-Mode\Packaged\Challenge Mode 1.3.5 for v1.1.2 (Recommended)"
set MOD7="C:\Users\lezen\Desktop\Alex\GitHub\TOTK-Master-Mode\Packaged\Challenge Mode 1.3.5 for v1.2.0 (Base)"
set MOD8="C:\Users\lezen\Desktop\Alex\GitHub\TOTK-Master-Mode\Packaged\Challenge Mode 1.3.5 for v1.2.0 (Recommended)"
set MOD9="C:\Users\lezen\Desktop\Alex\GitHub\TOTK-Master-Mode\Packaged\Challenge Mode 1.3.5 for v1.2.1 (Base)"
set MOD10="C:\Users\lezen\Desktop\Alex\GitHub\TOTK-Master-Mode\Packaged\Challenge Mode 1.3.5 for v1.2.1 (Recommended)"

:: Set the executable path
set EXE="C:\Users\lezen\Desktop\Alex\Jeux\Tears of the Kingdom modding\restbl.exe"

@echo on

:: Define mod-folder to version mapping
for %%I in (1 2 3 4 5 6 7 8 9 10) do (
    if %%I==1 set "VERSION=110" & call :PROCESS_MOD %MOD1%
    if %%I==2 set "VERSION=110" & call :PROCESS_MOD %MOD2%
    if %%I==3 set "VERSION=111" & call :PROCESS_MOD %MOD3%
    if %%I==4 set "VERSION=111" & call :PROCESS_MOD %MOD4%
    if %%I==5 set "VERSION=112" & call :PROCESS_MOD %MOD5%
    if %%I==6 set "VERSION=112" & call :PROCESS_MOD %MOD6%
    if %%I==7 set "VERSION=120" & call :PROCESS_MOD %MOD7%
    if %%I==8 set "VERSION=120" & call :PROCESS_MOD %MOD8%
    if %%I==9 set "VERSION=121" & call :PROCESS_MOD %MOD9%
    if %%I==10 set "VERSION=121" & call :PROCESS_MOD %MOD10%
)

@echo off
del %~dp0\RestblChangelog.json
pause
goto :EOF

:PROCESS_MOD
:: Execute the command for the current MOD folder and version
%EXE% --action single-mod --mod-path %1 --use-checksums --compress --version %VERSION% -d
attrib -a "%~1\romfs\System\Resource"
goto :EOF