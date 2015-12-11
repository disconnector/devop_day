#!/bin/bash

apt-get update

apt-get -y upgrade

apt-get -y install toilet figlet cowsay fortune fortunes-bofh-excuses

cp 00-header 99-footer /etc/update-motd.d/

cat EMC_CA.pem | sudo tee -a /etc/ssl/certs/ca-certificates.crt

cat EMC_SSL.pem | sudo tee -a /etc/ssl/certs/ca-certificates.crt

exit
