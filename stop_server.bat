@echo off
chcp 65001 > nul

echo ⏹️ Parando servidor...
REM aqui você pode parar manualmente no console do server
REM ou usar stop automático se quiser

REM --- remove lock ---
if exist server.lock del server.lock

git add .
git commit -m "save: mundo atualizado por %COMPUTERNAME%"
git push

set WEBHOOK_URL=https://discord.com/api/webhooks/1455941349835542783/coQxn5rWwNDQ4Qz1iD0s3_dYld2Fajg6lIvAG1bBwHgs0i3ToQL989KGE3KcgM3L5HR6
set MSG=🔴 O servidor foi fechado

curl -H "Content-Type: application/json" ^
  -d "{\"content\":\"%MSG%\"}" ^
  "%WEBHOOK_URL%"

echo ✅ Mundo sincronizado com sucesso.
pause