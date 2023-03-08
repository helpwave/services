//
// Variables
//

variable "dashboard_namespace" {
  type = string
  description = "The namespace for the dashboard"
  default = "dashboard-fe"
}

variable "dashboard_hostname" {
  type = string
  description = "The hostname of the dashboard"
  default = "tasks.helpwave.de"
}

//
// Helm Release
//

resource "helm_release" "dashboard-fe" {
  name  = "dashboard-fe"
  chart = "../../../charts/dashboard"
  wait = true

  depends_on = [
    helm_release.apisix
  ]

  namespace = var.dashboard_namespace
  create_namespace = true
}

resource "kubectl_manifest" "apisix_dashboard-fe_upstream" {
  depends_on = [
    helm_release.apisix,
    helm_release.dashboard-fe
  ]

  yaml_body = <<YAML
apiVersion: apisix.apache.org/v2
kind: ApisixUpstream
metadata:
  name: dashboard-fe
  namespace: ${var.dashboard_namespace}
spec:
  loadbalancer:
    type: roundrobin
  portLevelSettings:
  - port: 80
    scheme: http
YAML
}

resource "kubectl_manifest" "apisix_dashboard-fe_route" {
  depends_on = [
    helm_release.apisix
  ]

  yaml_body = <<YAML
apiVersion: apisix.apache.org/v2
kind: ApisixRoute
metadata:
  name: dashboard-fe
  namespace: ${var.dashboard_namespace}
spec:
  http:
  - name: dashboard-fe
    backends:
    - serviceName: dashboard-fe
      servicePort: 80
    match:
      hosts:
      - ${var.dashboard_hostname}
      paths:
      - /*
YAML
}
