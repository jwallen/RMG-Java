@echo off

if not defined RMG (
echo Error: RMG variable not defined; please set to the location of your RMG installation.
goto end
)
if not exist "%RMG%\bin\RMG.jar" (
echo Error: RMG.jar not found; please compile using ant.
goto end
)

if not exist input.txt (
echo Error: input.txt not found. Please create an PopulateReactions input file before running.
goto end
)

echo Running PopulateReactions...
java -Xmx500m -classpath "%RMG%\bin\RMG.jar" PopulateReactions input.txt > RMG.log 2>&1 &
echo PopulateReactions job completed.

:end
pause
