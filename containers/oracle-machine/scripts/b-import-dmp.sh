cp /dumps/* /dmp/*
cd /dmp
chmod 777 *
$ORACLE_HOME/bin/impdp SYSTEM/oracle@xe DIRECTORY=DUMP_DIR DUMPFILE=$1.DMP TRANSFORM=OID:N LOGFILE=$1.IMP$o REMAP_SCHEMA=SWDEV:$1