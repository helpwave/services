/*
  GKE still does not use CoreDNS by default, so we have to deploy it manually
*/

locals {
  coredns_cluster_ip = "10.83.240.20"
}

resource "helm_release" "coredns" {
  name  = "coredns"
  repository = "https://coredns.github.io/helm"
  chart = "coredns"

  depends_on = [
    google_container_node_pool.primary_spot_nodes
  ]

  namespace = "kube-system"
  create_namespace = false

  set {
    name = "replicaCount"
    value = 2
  }

  set {
    name = "service.clusterIP"
    value = local.coredns_cluster_ip
  }
}

resource "kubectl_manifest" "kube-dns_config_map" {
  depends_on = [
    helm_release.coredns
  ]

  yaml_body = <<YAML
apiVersion: v1
kind: ConfigMap
metadata:
  name: kube-dns
  namespace: kube-system
data:
  stubDomains: |
    {
      "helpwave.de": [
        "${local.coredns_cluster_ip}"
      ]
    }
YAML
}
