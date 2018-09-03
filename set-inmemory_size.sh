#!/bin/sh

sqlplus / as sysdba <<EOT

@ ./set-inmemory_size.sql

exit 0

EOT
