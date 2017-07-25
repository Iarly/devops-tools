echo "CREATE TABLESPACE DBO LOGGING DATAFILE '/u01/app/oracle/oradata/XE/DBO.dbf' SIZE 100m AUTOEXTEND ON NEXT 100m EXTENT MANAGEMENT LOCAL;" > a-create-user.sql
echo "CREATE USER $1 IDENTIFIED BY $1 DEFAULT TABLESPACE DBO QUOTA UNLIMITED ON DBO;" >> a-create-user.sql
echo "GRANT CREATE SESSION TO $1;" >> a-create-user.sql
echo "ALTER USER $1 IDENTIFIED BY $1 ACCOUNT UNLOCK;" >> a-create-user.sql
echo "ALTER USER $1 DEFAULT ROLE ALL;" >> a-create-user.sql
echo "CREATE OR REPLACE DIRECTORY DUMP_DIR AS '/dumps';" >> a-create-user.sql
echo "GRANT READ, WRITE ON DIRECTORY DUMP_DIR TO $1;" >> a-create-user.sql

/u01/app/oracle/product/11.2.0/xe/bin/sqlplus "SYS/oracle" AS SYSDBA @"a-create-user.sql"

read