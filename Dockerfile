FROM bitnami/kibana:8.4.3

COPY lib/*.sh /docker-entrypoint-initdb.d/
