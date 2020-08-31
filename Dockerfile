FROM jboss/keycloak

COPY ./realm-export.json /tmp/realm-export.json

ENV KEYCLOAK_USER admin
ENV KEYCLOAK_PASSWORD admin
ENV DB_USER keycloak
ENV DB_PASSWORD password
ENV DB_ADDR postgres
ENV DB_VENDOR postgres 
ENV KEYCLOAK_IMPORT /tmp/realm-export.json

EXPOSE 8080