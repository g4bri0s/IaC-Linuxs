#!/bin/bash

echo "atualizando servidor"
apt-get update
apt-get upgrade -y

echo "instalando apache"
apt-get install apache2 -y

echo "instalando unzip"

apr-get install unzip

echo "baixando arquivos web"

cd /tmp
wget github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio

cp -R * /var/www/html


