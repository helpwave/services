
locals {
  user_svc_keycloak_client_id = "user-svc"
  user_svc_keycloak_client_secret = "notSecretEither" // TODO: use vault ("**${vault.**_key_**}**")
}


/*resource "helm_release" "user-svc" {
  name  = "user-svc"
  chart = "../../../charts/service"
  wait = true

  depends_on = [
    helm_release.dapr,
    helm_release.keycloak
  ]

  namespace = "user"
  create_namespace = true

  set {
    name  = "app.name"
    value = "user"
  }

  set {
    name  = "image.repository"
    value = "ghcr.io/helpwave/user-svc"
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
    value = local.user_svc_keycloak_client_id
  }

  set {
    name  = "keycloakClientSecret"
    value = local.user_svc_keycloak_client_secret
  }

  set {
    name  = "insecureDisableTLSVerify"
    value = var.services_insecureDisableTLSVerify
  }
}*/
