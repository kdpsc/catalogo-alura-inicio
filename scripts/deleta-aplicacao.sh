#!/bin/bash

export TAG="$(date +%d-%m-%Y-%H:%M:%S)"

sudo mysqldump -h localhost -u root -p12345678 alura_aws > /tmp/alura_aws-hmg-$TAG.sql
mysql -h localhost -u root -p12345678 -e "drop database alura_aws" &>> /dev/null
mysql -h localhost -u root -p12345678 -e "create database alura_aws" &>> /dev/null

rm -rf /var/lib/tomcat8/webapps/*.war
rm -rf /var/lib/tomcat8/webapps/alura-aws
rm -rf /var/lib/tomcat8/webapps/loja
