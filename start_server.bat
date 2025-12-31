@echo off
chcp 65001 > nul
setlocal enabledelayedexpansion

REM --- verifica lock ---
if exist server.lock (
  echo ❌ Servidor ja esta em uso.
  type server.lock
  pause
  exit
)

REM --- puxa estado mais recente ---
echo 🔄 Sincronizando mundo...
git pull
if errorlevel 1 (
  echo ❌ Erro no git pull. Abortando.
  pause
  exit
)

REM --- cria lock ---
echo HOST=%COMPUTERNAME% > server.lock
echo STARTED_AT=%DATE% %TIME% >> server.lock

git add server.lock
git commit -m "lock: %COMPUTERNAME% iniciou o servidor"
git push


REM --- inicia servidor ---

set WEBHOOK_URL=https://discord.com/api/webhooks/1455941349835542783/coQxn5rWwNDQ4Qz1iD0s3_dYld2Fajg6lIvAG1bBwHgs0i3ToQL989KGE3KcgM3L5HR6

set MSG=▶️ Iniciando servidor...
echo %MSG%

curl -H "Content-Type: application/json" ^
  -d "{\"content\":\"%MSG%\"}" ^
  "%WEBHOOK_URL%"

start "Minecraft Server" cmd /k call run.bat

set MSG=🟢 O servidor está rodando

curl -H "Content-Type: application/json" ^
  -d "{\"content\":\"%MSG%\"}" ^
  "%WEBHOOK_URL%"
