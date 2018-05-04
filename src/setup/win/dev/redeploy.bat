@echo off
set BASEDIR=%~sdp0
call %BASEDIR%\setEnv.bat

echo removing the old
rmdir /S /Q %TOMCAT_HOME%\webapps\app >NUL 2>NUL
del /F /Q %TOMCAT_HOME%\webapps\app.war >NUL
echo deploying the new
copy /Y %PROJECT_HOME%\app-ui\target\app.war %TOMCAT_HOME%\webapps\app.war
echo done
timeout /t 1 >NUL