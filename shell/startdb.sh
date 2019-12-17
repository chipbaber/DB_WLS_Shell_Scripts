sqlplus 'sys/oracle as sysdba'<<eof
startup
exit
eof

echo "Starting the TNSLISTENER"
lsnrctl start
