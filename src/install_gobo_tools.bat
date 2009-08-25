setlocal
chdir ..
set PATH=%cd%\src\bin;%PATH%

chdir svn
geant install

chdir ..\override
call update_generated.py

endlocal
