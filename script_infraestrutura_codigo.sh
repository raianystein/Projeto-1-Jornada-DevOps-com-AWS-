#! /bin/bash
# Script para a criação de usuários, diretórios e permissões
cd /

echo "Criando diretório..."
mkdir public
mkdir adm
mkdir ven
mkdir sec

echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários e os adicionando aos respectivos grupos..."
useradd carlos -c "usuário Carlos" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "usuário Maria" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "usuário João" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd debora -c "usuário Débora" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "usuário Sebastiana" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "usuário Roberto" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd josefina -c "usuário Josefina" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "usuário Amanda" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "usuário Rogério" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC

echo "Adicionando permissões aos diretórios..."
chown root:GRP_ADM adm
chown root:GRP_VEN ven
chown root:GRP_SEC sec

chmod 777 public
chmod 770 adm
chmod 770 ven
chmod 770 sec

echo "Processo finalizado"
