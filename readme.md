# Minecraft Shared Dedicated Server (Git-based)

Este projeto permite que **várias pessoas hospedem o mesmo servidor dedicado de Minecraft**, em máquinas diferentes, **mantendo o mundo sincronizado via Git**.

A ideia é simples:

> Apenas **uma pessoa** pode hostear o servidor por vez.  
> Quando ela termina de jogar, o estado do servidor é salvo no GitHub.  
> A próxima pessoa pode puxar esse estado e continuar jogando de onde parou.

Nenhum serviço pago, nenhuma cloud externa — apenas **Git + scripts `.bat` no Windows**.

---

## 🎯 Objetivo

- Permitir que amigos **revezem o host** de um servidor dedicado
- Garantir que o **mundo esteja sempre sincronizado**
- Evitar corrupção de save usando um **lock simples**
- Manter tudo **open source e fácil de entender**

---

## ⚠️ Regras importantes (leia antes)

1. **Apenas UMA instância do servidor pode rodar por vez**
2. **Sempre use o `start_server.bat` para iniciar**
3. **Sempre use o `stop_server.bat` para encerrar**
4. Nunca rode `run.bat` diretamente
5. Nunca dois usuários ao mesmo tempo

Se essas regras não forem seguidas, **o mundo pode ser corrompido**.

---

## 🧠 Como funciona (visão geral)

### Início (`start_server.bat`)
1. Faz `git pull` para baixar o estado mais recente
2. Verifica se existe um `server.lock`
   - Se existir, outro usuário está hosteando
3. Cria o `server.lock`
4. Faz commit e push do lock
5. Inicia o servidor (`run.bat`)

### Encerramento (`stop_server.bat`)
1. Encerra o servidor
2. Remove o `server.lock`
3. Faz commit e push do estado atualizado do mundo

O **GitHub funciona como a “fonte da verdade”** do estado do servidor.

---

## 📂 Estrutura do projeto

```text
.
├─ run.bat               # Script original do Forge (NÃO editar)
├─ start_server.bat      # Script para iniciar o servidor
├─ stop_server.bat       # Script para encerrar e sincronizar
├─ server.lock           # Criado automaticamente (não editar)
├─ world/                # Mundo do Minecraft
├─ config/               # Configurações
├─ mods/
├─ logs/
└─ README.md
