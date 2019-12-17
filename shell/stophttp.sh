#!/bin/sh
#
#
echo "Script Starting"

#export ORACLE_INSTANCE=/oracle/app/httpd/Oracle_HTTPD/instances/http_1
#export PATH=$PATH:/oracle/app/httpd/Oracle_HTTPD/instances/http_1/bin

echo "Environment variables set"

echo "Stopping opmn"

opmnctl stopall

