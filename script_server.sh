#!/bin/bash

echo "criando grupos"
groupadd GRP_ADM
groupadd GRP_DEV

echo "criando diretorios"
mkdir /adm
mkdir /devs
mkdir /publico

echo "criando usuarios"

useradd ADM -c "Administrador" -m -s /bin/bash -p $(openssl passwd -crypt senhaADM1) -G GRP_ADM
useradd Dev1 -c "Desenvolvedor 1" -m -s /bin/bash -p $(openssl passwd -grypt senhaDev1) -G GPR_DEV

echo "alterando permissões"
chown root:GPR_ADM /adm
chown root:GPR_DEV /devs
chmod 770 /adm
chmod 770 /devs

echo "Grupos, diretorios e usuarios criados. Para alterações, contate o administrador do server"



