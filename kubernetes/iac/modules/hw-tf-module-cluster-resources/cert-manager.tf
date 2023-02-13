resource "helm_release" "cert-manager" {
  name = "cert-manager"
  repository = "https://charts.jetstack.io"
  chart = "cert-manager"
  version = "1.11.0"

  namespace = "cert-manager"
  create_namespace = true

  set {
    name = "installCRDs"
    value = true
  }

  set {
    name = "startupapicheck.timeout"
    value = "5m"
  }

  set {
    name = "prometheus.enabled"
    value = false
  }
}

