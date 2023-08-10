FROM postgres:latest

ENV POSTGRES_DB RevDB
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD admin

COPY sql/airlines.sql /docker-entrypoint-initdb.d/
COPY sql/airports.sql /docker-entrypoint-initdb.d/
COPY sql/flights.sql /docker-entrypoint-initdb.d/
COPY sql/planes.sql /docker-entrypoint-initdb.d/


EXPOSE 5432