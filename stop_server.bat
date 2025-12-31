@echo off

echo ⏹️ Parando servidor...
REM aqui você pode parar manualmente no console do server
REM ou usar stop automático se quiser

REM --- remove lock ---
if exist server.lock del server.lock

git add .
git commit -m "save: mundo atualizado por %COMPUTERNAME%"
git push

echo ✅ Mundo sincronizado com sucesso.
pause