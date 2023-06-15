resource "helm_release" "auth-svc" {
  name  = "auth-svc"
  chart = "../../../charts/service"
  wait = true

  depends_on = [
    helm_release.dapr,
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
    name  = "insecureDisableTLSVerify"
    value = var.services_insecureDisableTLSVerify
  }
}
