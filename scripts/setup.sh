#!/bin/bash

apt-get update

apt-get -y upgrade

apt-get -y yinstall toilet figlet cowsay fortune

mkdir /home/ops/packages

cd /home/ops/packages

scp ops@$1:/home/ops/packages/* /home/ops/packages/

cp 00-header 99-footer /etc/update-motd.d/

cat EMC_CA.pem | sudo tee -a /etc/ssl/certs/ca-certificates.crt

cat EMC_SSL.pem | sudo tee -a /etc/ssl/certs/ca-certificates.crt

exit
