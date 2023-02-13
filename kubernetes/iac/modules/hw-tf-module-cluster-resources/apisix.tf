locals {
  apisix_name = "apisix"
  apisix_namespace = "apisix"
}

resource "helm_release" "apisix" {
  name  = local.apisix_name
  repository = "https://charts.apiseven.com"
  chart = "apisix"

  depends_on = [
    helm_release.dapr
  ]

  namespace = local.apisix_namespace
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

resource "kubectl_manifest" "apisix_dapr_upstream" {
  depends_on = [
    helm_release.apisix
  ]

  yaml_body = <<YAML
apiVersion: apisix.apache.org/v2
kind: ApisixUpstream
metadata:
  name: ${local.apisix_name}-dapr
  namespace: ${local.apisix_namespace}
spec:
  loadbalancer:
    type: roundrobin
  portLevelSettings:
  - port: 3500
    scheme: http
  - port: 50001
    scheme: grpc
YAML
}

resource "kubectl_manifest" "apisix_dapr_route" {
  depends_on = [
    helm_release.apisix
  ]

  yaml_body = <<YAML
apiVersion: apisix.apache.org/v2
kind: ApisixRoute
metadata:
  name: ${local.apisix_name}-dapr
  namespace: ${local.apisix_namespace}
spec:
  http:
  - backends:
    - serviceName: ${local.apisix_name}-dapr
      servicePort: 50001
    match:
      paths:
      - /*
    name: ${local.apisix_name}-dapr
YAML
}
