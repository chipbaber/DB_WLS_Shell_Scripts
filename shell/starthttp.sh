#!/bin/sh
#
#
echo "Script Starting"

export ORACLE_INSTANCE=/oracle/app/httpd/Oracle_HTTPD/instances/http_1
export PATH=$PATH:/oracle/app/httpd/Oracle_HTTPD/instances/http_1/bin

echo "Environment variables set"

pwd 

echo "Starting opmn"

opmnctl startall
sleep 15;
echo "Starting HTTP Server"

#opmnctl startproc ias-component=pspwebtier


echo "checking opmn status"
opmnctl status
sleep 15;
