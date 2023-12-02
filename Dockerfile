FROM bitnami/kibana:8.10.4

COPY lib/*.sh /docker-entrypoint-initdb.d/
