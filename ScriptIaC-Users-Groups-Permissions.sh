#!/bin/bash

echo "Adding directories..."

mkdir /public
mkdir /adm
mkdir /sales
mkdir /sec

echo "Adding user groups..."

groupadd GRP_ADM
groupadd GRP_SALES
groupadd GRP_SEC

echo "Adding users and setting their respective groups..."

useradd -m -s /bin/bash  -p $(mkpasswd --method=sha-512 --rounds=12 Senha123)  carlos -G GRP_ADM
passwd carlos -e
useradd -m -s /bin/bash  -p $(mkpasswd --method=sha-512 --rounds=12 Senha123)  maria -G GRP_ADM
passwd maria -e
useradd -m -s /bin/bash  -p $(mkpasswd --method=sha-512 --rounds=12 Senha123)  joão -G GRP_ADM
passwd joão -e
useradd -m -s /bin/bash  -p $(mkpasswd --method=sha-512 --rounds=12 Senha123)  debora -G GRP_SALES
passwd debora -e
useradd -m -s /bin/bash  -p $(mkpasswd --method=sha-512 --rounds=12 Senha123)  sebastiana -G GRP_SALES
passwd sebastiana -e
useradd -m -s /bin/bash  -p $(mkpasswd --method=sha-512 --rounds=12 Senha123)  roberto -G GRP_SALES
passwd roberto -e
useradd -m -s /bin/bash  -p $(mkpasswd --method=sha-512 --rounds=12 Senha123)  josefina -G GRP_SEC
passwd josefina -e
useradd -m -s /bin/bash  -p $(mkpasswd --method=sha-512 --rounds=12 Senha123)  amanda -G GRP_SEC
passwd amanda -e
useradd -m -s /bin/bash  -p $(mkpasswd --method=sha-512 --rounds=12 Senha123)  rogerio -G GRP_SEC
passwd rogerio -e
useradd -m -s /bin/bash  -p $(mkpasswd --method=sha-512 --rounds=12 Senha123)  kira -G GRP_ADM
passwd kira -e
useradd -m -s /bin/bash  -p $(mkpasswd --method=sha-512 --rounds=12 Senha123)  chiara -G GRP_ADM
passwd chiara -e

echo "Setting groups and directories permissions..."

chown root:GRP_ADM /adm
chown root:GRP_SALES /sales
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /sales
chmod 770 /sec
chmod 777 /public

echo "Finished running script!"
