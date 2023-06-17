
variable "services_insecureDisableTLSVerify" {
  type = bool
  default = false
}

resource "helm_release" "user-svc" {
  name  = "user-svc"
  chart = "../../../charts/service"
  wait = true

  depends_on = [
    helm_release.dapr,
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
    name  = "insecureDisableTLSVerify"
    value = var.services_insecureDisableTLSVerify
  }
}
