FROM bitnami/kibana:8.11.1

COPY lib/*.sh /docker-entrypoint-initdb.d/
