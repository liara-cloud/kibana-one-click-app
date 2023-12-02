FROM bitnami/kibana:8.11

COPY lib/*.sh /docker-entrypoint-initdb.d/
