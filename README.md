# ProjetoLinux-01
## Infraestrutura como Código: Script de Criação de Estrutura de Usuários, Diretórios e Permissões

<p></p>

> Executando o script projeto-01.sh: 
````
root@SRV-OLIMPO:~/projeto# ./projeto-01.sh
CRIANDO DIRETORIOS
CRIANDO GRUPOS
APLICANDO PERMISSIONAMENTOS
CRIANDO USUARIOS DO GRUPO ADM
CRIANDO USUARIOS DO GRUPO VEN
CRIANDO USUARIOS DO GRUPO SEC
````
> Lista diretórios para verificar permissionamento
````
root@SRV-OLIMPO:~/projeto# ls -la
total 24
drwxr-xr-x 6 root root    4096 Oct  4 19:30 .
drwx------ 6 root root    4096 Oct  4 19:30 ..
drwxrwx--- 2 root GRP_ADM 4096 Oct  4 19:25 adm
drwxrwxrwx 2 root root    4096 Oct  4 19:25 publico
drwxrwx--- 2 root GRP_SEC 4096 Oct  4 19:25 sec
drwxrwx--- 2 root GRP_VEN 4096 Oct  4 19:25 ven
````

> Verificando usuários e grupos 
````
root@SRV-OLIMPO:~/projeto# cat /etc/group | grep GRP_*
GRP_ADM:x:1003:carlos,maria,joao
GRP_VEN:x:1004:debora,sebastiana,roberta
GRP_SEC:x:1005:josefina,amanda,rogerio
````