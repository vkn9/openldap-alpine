FROM alpine

ENV ORGANISATION_NAME "Vkn9 Ltd"
ENV SUFFIX "dc=vkn9,dc=com"
ENV ROOT_USER "admin"
ENV ROOT_PW "admin"
ENV USER_UID "vkn9"
ENV USER_GIVEN_NAME "Dung"
ENV USER_SURNAME "Nguyen"
ENV USER_EMAIL "vkn9@gitub.com"
ENV ACCESS_CONTROL "access to * by * read"
ENV LOG_LEVEL "stats"

RUN apk add --update openldap openldap-back-mdb && \
    mkdir -p /run/openldap /var/lib/openldap/openldap-data && \
    rm -rf /var/cache/apk/*

COPY scripts/* /etc/openldap/
COPY docker-entrypoint.sh /

EXPOSE 389
EXPOSE 636

VOLUME ["/ldif", "/var/lib/openldap/openldap-data"]

ENTRYPOINT ["/docker-entrypoint.sh"]