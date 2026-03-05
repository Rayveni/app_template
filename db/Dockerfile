FROM postgres:18.3-alpine3.23

COPY init_sql/. custom_scripts/
COPY init.sh /docker-entrypoint-initdb.d/

