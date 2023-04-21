#!/bin/bash

echo "para criar os usuarios público"
 

useradd carlos -s /bin/bash -m -G GRP_ADM 

useradd maria -s /bin/bash -m -G GRP_ADM

useradd joao -s /bin/bash -m -G GRP_ADM


useradd debora -s /bin/bash -m -G GRP_VEN

useradd sebastiana -s /bin/bash -m -G GRP_VEN

useradd roberto -s /bin/bash -m -G GRP_VEN



useradd josefina -s /bin/bash -m -G GRP_SEC

useradd amanda -s /bin/bash -m -G GRP_SEC

useradd rogerio -s /bin/bash -m -G GRP_SEC

echo "Terminei de criar os usuários e assignei eles aos grupos correspondientes........"

echo "vamos dar agora um twist nas permissões dos grupos... desculpa, dos diretórios e suas conexões : ) "

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "uff... que foda sou..."

echo "Agora sim as permissões dos diretorios"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


echo "feito"
