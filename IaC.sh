#!/bin/bash

echo "Criando os diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuários e adicionando-os aos grupos..."
useradd carlos -m -s /bin/bash/ -p $(openssl passwd -crypt a1b2c3) -G GRP_ADM
useradd maria -m -s /bin/bash/ -p $(openssl passwd -crypt a1b2c3) -G GRP_ADM
useradd joao -m -s /bin/bash/ -p $(openssl passwd -crypt a1b2c3) -G GRP_ADM
useradd debora -m -s /bin/bash/ -p $(openssl passwd -crypt a1b2c3) -G GRP_VEN
useradd sebastiana -m -s /bin/bash/ -p $(openssl passwd -crypt a1b2c3) -G GRP_VEN
useradd roberto -m -s /bin/bash/ -p $(openssl passwd -crypt a1b2c3) -G GRP_VEN
useradd josefina -m -s /bin/bash/ -p $(openssl passwd -crypt a1b2c3) -G GRP_SEC
useradd amanda -m -s /bin/bash/ -p $(openssl passwd -crypt a1b2c3) -G GRP_SEC
useradd rogerio -m -s /bin/bash/ -p $(openssl passwd -crypt a1b2c3) -G GRP_SEC

echo "Configurando permissões de acesso aos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "A criação da estrutura de usuários, diretórios e permissões está finalizada."

