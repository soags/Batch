@echo off
setlocal 

set rootDir=C:\tmp

set dirName=%rootDir%\%date:~-10,4%-%date:~-5,2%-%date:~-2%

if not "%1"=="" (
    set dirName=%dirName%_%~1
)

if not exist "%dirName%\" (    
    mkdir %dirName%
)

explorer %dirName%

exit /b 0