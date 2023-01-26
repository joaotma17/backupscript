#!/bin/bash

# Define o diretório onde se encontra a pasta para fazer o backup e o destino
src="/c/Users/joaot/Desktop/Scripting"
dest="/c/Users/joaot/Desktop/Scripting"

# Variavel timestamp, para saber a que horas a script fez backups
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")

# Criar o ficheiro com o timestamp no nome
tar -zcvf "$dest/backup_$timestamp.zip" "$src"

# A que horas a script deve ser executada
schtasks //create //tn "BackupScript" //tr "/c/Users/joaot/Desktop/Scripting" //sc DAILY //st 19:20