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

resource "helm_release" "apisix" {
  name  = "apisix"
  repository = "https://charts.apiseven.com"
  chart = "apisix"

  depends_on = [
    helm_release.dapr
  ]

  namespace = "apisix"
  create_namespace = true

  set {
    name  = "gateway.type"
    value = var.apisix_gateway_type
  }

  set {
    name  = "gateway.loadBalancerIP"
    value = var.apisix_gateway_ip
  }

  set {
    name  = "gateway.tls.enabled"
    value = var.apisix_gateway_tls
  }

  set {
    name = "ingress-controller.enabled"
    value = "true"
  }

  set {
    name = "ingress-controller.config.apisix.serviceNamespace"
    value = "apisix"
  }

  set {
    name = "dashboard.enabled"
    value = "true"
  }

  // BEGIN OF Dapr podAnnotations
  set {
    name = "apisix.podAnnotations.dapr\\.io/enabled"
    value = "true"
  }

  set {
    name = "apisix.podAnnotations.dapr\\.io/sidecar-listen-addresses"
    value = "0.0.0.0"
  }

  set {
    name = "apisix.podAnnotations.dapr\\.io/app-id"
    value = "apisix"
  }

  set {
    name = "apisix.podAnnotations.dapr\\.io/app-port"
    value = "9080"
  }

  set {
    name = "apisix.podAnnotations.dapr\\.io/enable-metrics"
    value = "true"
  }

  set {
    name = "apisix.podAnnotations.dapr\\.io/metrics-port"
    value = "9099"
  }
  // END OF Dapr podAnnotations
}

# kubectl port-forward <name of the dashboard-pod> 9000:9000
resource "helm_release" "apisix-dashboard" {
  name  = "apisix-dashboard"
  repository = "https://charts.apiseven.com"
  chart = "apisix-dashboard"

  depends_on = [
    helm_release.apisix
  ]

  namespace = "apisix"
}
