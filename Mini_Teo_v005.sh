#!/bin/bash

echo -e "\n PARAMOS MINISHIFT"
minishift stop

echo -e "\n INICIAMOS MINISHIFT"
minishift start

echo -e "\n ESTABLECEMOS PASSWORD USUARIO DOCKER"
minishift ssh sudo passwd docker

echo -e "\n COPIAMOS CONTENIDOS"
scp teo_2017-04-01_v005.tgz docker@openshift:

echo -e "\n DESCOMPRIMIMOS LOS CONTENIDOS"
minishift ssh 'tar -zxf ./teo_2017-04-01_v005.tgz'

echo -e "\n ACCEDEMOS A MINISHIFT"
echo -e "\n Comandos a ejecutar en la sessión de ssh:"
echo "       $ cd teo"
echo "       $ ./RH_install_and_run.sh "
echo ""
minishift ssh 


