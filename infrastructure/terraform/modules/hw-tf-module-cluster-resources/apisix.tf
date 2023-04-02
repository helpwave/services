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

variable "api_hostname" {
  type = string
  description = "The hostname of the api"
  default = "api.helpwave.de"
}

locals {
  apisix_name = "apisix"
  apisix_namespace = "apisix"
}

//
// Helm Releases
//

// APISIX Ingress Controller


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
      hosts:
      - ${var.api_hostname}
      paths:
      - /*
    name: ${local.apisix_name}-dapr
YAML
}

resource "kubectl_manifest" "apisix_task-svc_route" {
  depends_on = [
    helm_release.apisix
  ]

  yaml_body = <<YAML
apiVersion: apisix.apache.org/v2
kind: ApisixRoute
metadata:
  name: task-svc
  namespace: ${local.apisix_namespace}
spec:
  http:
  - backends:
    - serviceName: ${local.apisix_name}-dapr
      servicePort: 50001
    match:
      hosts:
      - ${var.api_hostname}
      paths:
      - /task-svc/*
      - /tasks-svc/*
    name: task-svc
    plugins:
      - name: cors
        enable: true
      - name: grpc-web
        enable: true
      - name: proxy-rewrite
        enable: true
        config:
          headers:
            set:
              dapr-app-id: "task.task"
YAML
}
