#/bin/bash

echo "CRIANDO DIRETORIOS"
mkdir publico adm ven sec

echo "CRIANDO GRUPOS"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "APLICANDO PERMISSIONAMENTOS"
chown root:GRP_ADM adm/ 
chown root:GRP_VEN ven/ 
chown root:GRP_SEC sec/ 

chmod 777 publico/
chmod 770 adm/
chmod 770 ven/
chmod 770 sec/

echo "CRIANDO USUARIOS DO GRUPO ADM"
useradd carlos -c "User Carlos" -m -s /bin/bash -p $(openssl passwd -6 p4ssW0rd) -G GRP_ADM
useradd maria  -c "User Maria"  -m -s /bin/bash -p $(openssl passwd -6 p4ssW0rd) -G GRP_ADM
useradd joao   -c "User Joao"   -m -s /bin/bash -p $(openssl passwd -6 p4ssW0rd) -G GRP_ADM

echo "CRIANDO USUARIOS DO GRUPO VEN"
useradd debora -c "User Debora" -m -s /bin/bash -p $(openssl passwd -6 p4ssW0rd) -G GRP_VEN
useradd sebastiana -c "User Sebastiana"  -m -s /bin/bash -p $(openssl passwd -6 p4ssW0rd) -G GRP_VEN
useradd roberta   -c "User Roberta"   -m -s /bin/bash -p $(openssl passwd -6 p4ssW0rd) -G GRP_VEN

echo "CRIANDO USUARIOS DO GRUPO SEC"
useradd josefina -c "User Josefina" -m -s /bin/bash -p $(openssl passwd -6 p4ssW0rd) -G GRP_SEC
useradd amanda -c "User Amanda"  -m -s /bin/bash -p $(openssl passwd -6 p4ssW0rd) -G GRP_SEC
useradd rogerio   -c "User Rogerio"   -m -s /bin/bash -p $(openssl passwd -6 p4ssW0rd) -G GRP_SEC

