
locals {
  auth_svc_callback_url = "https://api.helpwave.de/auth-svc/callback" // TODO
  auth_svc_keycloak_client_id = "auth-svc"
  auth_svc_keycloak_client_secret = "notReallySecret" // TODO: use vault ("**${vault.**_key_**}**")
}


resource "helm_release" "auth-svc" {
  name  = "auth-svc"
  chart = "../../../charts/service"
  wait = true

  depends_on = [
    // helm_release.apisix,
    helm_release.keycloak
  ]

  namespace = "auth"
  create_namespace = true

  set {
    name  = "app.name"
    value = "auth"
  }

  set {
    name  = "image.repository"
    value = "ghcr.io/helpwave/auth-svc"
  }

  set {
    name  = "image.tag"
    value = "edge"
  }

  set {
    name  = "image.pullPolicy"
    value = "Always"
  }

  set {
    name  = "service.enabled"
    value = true
  }

  set {
    name  = "postgres.disabled"
    value = true
  }

  set {
    name  = "keycloakClientID"
    value = local.auth_svc_keycloak_client_id
  }

  set {
    name  = "keycloakClientSecret"
    value = local.auth_svc_keycloak_client_secret
  }

  set {
    name  = "keycloakCallbackURL"
    value = local.auth_svc_callback_url
  }

}
