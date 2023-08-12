#!/bin/sh

kubectl create ns stock-trad
export ROOT=$PWD
cd $ROOT/apisix
sh main.sh

cd $ROOT/apiservice
sh main.sh

cd $ROOT/keycloak
sh main.sh