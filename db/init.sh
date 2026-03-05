#!/bin/bash


echo "Running custom init.sh script"


SECRET_VALUE=$(cat /run/secrets/db_password)
echo "My secret is~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~: $SECRET_VALUE"
# Example: create an additional user and database using psql  --username "user_pg" --dbname "db_pg"
psql -v ON_ERROR_STOP=1 --username "user_pg" --dbname "postgres" -f /custom_scripts/create_db.sql
#psql -v ON_ERROR_STOP=1 --username "user_pg" --dbname "db_pg" <<-EOSQL
#    CREATE USER customuser WITH PASSWORD 'custompassword';
#    CREATE DATABASE customdb;
 #   GRANT ALL PRIVILEGES ON DATABASE customdb TO customuser;
#EOSQL
echo "Running drop default database"
psql -v ON_ERROR_STOP=1 --username "user_pg" --dbname "app1db" -f /custom_scripts/drop_default_bd.sql
echo "Running drop clearsh "

