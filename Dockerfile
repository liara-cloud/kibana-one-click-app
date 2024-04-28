FROM bitnami/kibana:8.13.2

COPY lib/*.sh /docker-entrypoint-initdb.d/
