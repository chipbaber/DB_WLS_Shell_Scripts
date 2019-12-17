lsnrctl stop

sqlplus 'sys/oracle as sysdba'<<eof
select name, open_mode from v\$database ;
show parameter db_name
shutdown immediate
exit
eof
