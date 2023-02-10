/*
  Keycloak is an open-source identity provider.
  We use it for managing users, organizations and logins.

  cf. https://www.keycloak.org/
      https://www.keycloak.org/guides
      https://www.keycloak.org/docs/latest/server_admin/index.html
*/

//
// Variables
//

// which tag of our custom keycloak image should be used?
variable "keycloak_image_tag" {
  type = string
  default = "edge"
}

// what publicly accessible domain should kc expect to be reachable at?
// also used for the ingress
// must be a domain, without path and port
variable "keycloak_hostname" {
  type = string
  default = "sso.helpwave.de"
}

//
// Locals
//

locals {
  keycloak_database_name = "keycloak"

  // TODO: use secrets when we swap out db
  keycloak_database_user = "keycloak"
  keycloak_database_password = "keycloak"
}

//
// Helm Release
//

// TODO: Move away from one PostgreSQL-Server per service.
// Database
resource "helm_release" "keycloak_db" {
  name  = "keycloak-postgres"
  repository = "https://charts.bitnami.com/bitnami"
  chart = "postgresql"
  wait = true

  namespace = "keycloak"
  create_namespace = true

  set {
    name  = "auth.enablePostgresUser"
    value = true
  }

  set {
    name  = "auth.database"
    value = local.keycloak_database_name
  }

  set {
    name  = "auth.username"
    value = local.keycloak_database_user
  }

  set {
    name  = "auth.password"
    value = local.keycloak_database_password
  }

  set {
    name  = "auth.postgresPassword"
    value = local.keycloak_database_password
  }
}

// keycloak operator + CRD + Ingress
resource "helm_release" "keycloak" {
  name  = "keycloak"
  chart = "../../../charts/keycloak"
  wait = true

  depends_on = [
    helm_release.apisix,
    helm_release.keycloak_db
  ]

  namespace = "keycloak"
  create_namespace = true

  set {
    name  = "keycloak-operator.nameOverride"
    value = "operator"
  }


  // our custom keycloak image
  set {
    name  = "keycloak-operator.keycloakImage.repository"
    value = "ghcr.io/helpwave/keycloak"
  }

  set {
    name  = "keycloak-operator.keycloakImage.tag"
    value = var.keycloak_image_tag
  }

  // hostname
  set {
    name  = "hostname"
    value = var.keycloak_hostname
  }

  set {
    name  = "hostnameStrict"
    value = false
  }

  // access
  set {
    name  = "httpEnabled"
    value = true
  }

  set {
    name  = "tlsUseFakeCert"
    value = true
  }

  set {
    name  = "ingressCustom"
    value = true
  }

  // database
  set {
    name  = "dbHost"
    value = "keycloak-postgres-postgresql.keycloak"
  }

  set {
    name  = "dbPort"
    value = "5432"
  }

  set {
    name  = "dbDatabase"
    value = local.keycloak_database_user
  }

  set {
    name  = "dbUsername"
    value = local.keycloak_database_user
  }

  set {
    name  = "dbPassword"
    value = local.keycloak_database_password
  }

  // auth callback
  set {
    name  = "svcAuthCallback"
    value = local.auth_svc_callback_url
  }

  // secrets for clients
  set {
    name  = "svcAuthSecret"
    value = local.auth_svc_keycloak_client_secret
  }

  set {
    name  = "svcUserSecret"
    value = local.user_svc_keycloak_client_secret
  }

}
