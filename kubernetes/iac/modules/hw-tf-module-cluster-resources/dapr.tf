resource "helm_release" "dapr" {
  name = "dapr"
  repository = "https://dapr.github.io/helm-charts"
  chart = "dapr"
  version = "1.9.5"

  namespace = "dapr-system"
  create_namespace = true

  set {
    name = "global.ha.enabled"
    value = var.dapr_ha
  }
}

