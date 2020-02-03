PG_HOME='/var/lib/postgresql'
LAST_BKP=`/var/lib/postgresql/BKP | sort -r | head -n 1`
INITDB='/usr/lib/postgresql/9.6/bin/initdb'
PG_CTL='/usr/lib/postgresql/9.6/bin/pg_ctl'
DEV='/var/lib/postgresql/DEV'


rm -rf /var/lib/postgresql/DEV/*

$INITDB -D $DEV

tar -xf $PG_HOME/$LAST_BKP/base.tar -C DEV

cp $PG_HOME/TMP $DEV

$PG_CTL -D $DEV -l $DEV/logfile_DEV start
