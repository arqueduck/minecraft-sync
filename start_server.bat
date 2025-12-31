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

REM --- inicia servidor e grava log ---

set WEBHOOK_URL=https://discord.com/api/webhooks/1455941349835542783/coQxn5rWwNDQ4Qz1iD0s3_dYld2Fajg6lIvAG1bBwHgs0i3ToQL989KGE3KcgM3L5HR6

set LOGFILE=%CD%\server.log
if exist "%LOGFILE%" del "%LOGFILE%"

set MSG=▶️ Iniciando servidor...
curl -H "Content-Type: application/json; charset=utf-8" ^
  --data-binary "{\"content\":\"%MSG%\"}" ^
  "%WEBHOOK_URL%"

REM roda em outra janela e redireciona saída para o log
start "Minecraft Server" /D "%CD%" cmd /c call "%CD%\run.bat" ^>^> "%LOGFILE%" 2^>^&1

REM --- espera até o servidor ficar pronto ---
echo ⏳ Aguardando inicialização (procurando "Done (")...

:wait_log
if not exist "%LOGFILE%" (
  timeout /t 1 /nobreak >nul
  goto wait_log
)

:wait_ready
findstr /C:"Done (" "%LOGFILE%" >nul 2>&1
if errorlevel 1 (
  timeout /t 2 /nobreak >nul
  goto wait_ready
)

set MSG=🟢 O servidor está rodando (inicialização concluída)
curl -H "Content-Type: application/json; charset=utf-8" ^
  --data-binary "{\"content\":\"%MSG%\"}" ^
  "%WEBHOOK_URL%"