#!/bin/bash

# Variáveis

ORIGEM="./origem"

DESTINO="./backup"

LOGS="./logs"

DATA=$(date +"%Y-%m-%d_%H-%M-%S")

# Criar pastas de logs se não existir

mkdir -p $LOGS

# Criar arquivo de log

LOG_FILE="$LOGS/backup_$DATA.log"

echo "Iniciando backup em $DATA" >> $LOG_FILE

# Copiar arquivos

cp -r $ORIGEM/* $DESTINO/

# Verificar se deu certo

if [ $? -eq 0 ]; then
	echo "Backup realizado com sucesso!" >> $LOG_FILE
else
	echo "Erro ao realizar backup!!" >> $LOG_FILE
fi

echo "Backup finalizado." >> $LOG_FILE
