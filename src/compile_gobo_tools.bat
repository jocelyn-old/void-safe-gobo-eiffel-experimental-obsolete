@echo off
setlocal

mkdir bin
set ECCMD= ec -finalize -c_compile -clean -project_path %CD% -experiment -config 

:compile_start
if not exist "bin\geant.exe" goto geant
if not exist "bin\gepp.exe" goto gepp
if not exist "bin\gelex.exe" goto gelex
if not exist "bin\geyacc.exe" goto geyacc
if not exist "bin\geyacc.exe" goto geyacc
if not exist "bin\gexace.exe" goto gexace
goto end

:geant
%ECCMD% geant.ecf 
move EIFGENs\geant\F_code\geant.exe bin
rd /q/s EIFGENS\geant
del *.rc
goto compile_done

:gepp
%ECCMD% gepp.ecf 
move EIFGENs\gepp\F_code\gepp.exe bin
rd /q/s EIFGENS\gepp
del *.rc
goto compile_done

:gelex
%ECCMD% gelex.ecf 
move EIFGENs\gelex\F_code\gelex.exe bin
rd /q/s EIFGENS\gelex
del *.rc
goto compile_done

:geyacc
%ECCMD% geyacc.ecf 
move EIFGENs\geyacc\F_code\geyacc.exe bin
rd /q/s EIFGENS\geyacc
del *.rc
goto compile_done

:gexace
%ECCMD% gexace.ecf 
move EIFGENs\gexace\F_code\gexace.exe bin
rd /q/s EIFGENS\gexace
del *.rc
goto compile_done

:compile_done
goto compile_start

:end

