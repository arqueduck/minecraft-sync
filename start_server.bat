@echo off
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
echo ▶️ Iniciando servidor...
call run.bat