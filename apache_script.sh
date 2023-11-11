#!/bin/bash

echo "Atualizando Sistema..."

apt update 
apt upgrade

echo "Sistema Atualizado!"

echo "Instalando Servidor Web (apache) e Unzip"

apt install apache2
apt install unzip

echo "Instalação finalizada"

echo "Baixando aplicação do GitHub e movendo para o servidor Web..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

rm /var/www/html/index.html

unzip main.zip 

cd linux-site-dio-main

cp ./* -r /var/www/html/

echo "Finalizado download da aplicação e movimentação dos arquivos!"
