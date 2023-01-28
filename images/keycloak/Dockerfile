FROM quay.io/keycloak/keycloak:latest as builder

# Enable health and metrics support
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# Configure a database vendor
ENV KC_DB=postgres

WORKDIR /opt/keycloak
RUN /opt/keycloak/bin/kc.sh build

FROM quay.io/keycloak/keycloak:latest
COPY --from=builder /opt/keycloak/ /opt/keycloak/


ENV KC_HTTPS_CERTIFICATE_FILE=/cert.pem
ENV KC_HTTPS_CERTIFICATE_KEY_FILE=/key.pem
ENV KC_HTTP_PORT=80
ENV KC_HTTPS_PORT=443
ENTRYPOINT ["/opt/keycloak/bin/kc.sh", "start", "--optimized"]
