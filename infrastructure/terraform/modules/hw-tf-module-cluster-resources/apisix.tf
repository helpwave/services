/*
  APISIX is an Ingress and API Gateway.
  We use it to route incoming traffic to the correct service using its CRDs.
  Before we can apply a variety of plugins.

  cf. https://apisix.apache.org/
      https://apisix.apache.org/docs/ingress-controller/getting-started/
      https://apisix.apache.org/docs/helm-chart/apisix/
*/

//
// Variables
//

variable "apisix_gateway_type" {
  type = string
  description = "The gateway service is where user traffic will turn up. Should it be a NodePort or LoadBalancer Service?"
  default = "NodePort"

  validation {
    condition = can(regex("^(NodePort|LoadBalancer)$", var.apisix_gateway_type))
    error_message = "Must be NodePort or LoadBalancer"
  }
}

variable "apisix_gateway_ip" {
  type = string
  description = "In case apisix_gateway_type is LoadBalance, set a loadBalancerIP as provided by the load balancer"
  default = ""
}

variable "apisix_gateway_tls_enabled" {
  type = bool
  description = "Enable TLS for the gateway"
  default = true
}

//
// Helm Releases
//

// APISIX Ingress Controller
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
    value = var.apisix_gateway_tls_enabled
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
