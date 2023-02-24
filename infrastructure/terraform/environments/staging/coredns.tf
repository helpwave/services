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

resource "kubectl_manifest" "coredns_config_map" {
  depends_on = [
    helm_release.coredns
  ]

  yaml_body = <<YAML
apiVersion: v1
kind: ConfigMap
metadata:
  name: coredns-coredns
  namespace: kube-system
data:
  Corefile: |
    .:53 {
        errors
        health {
           lameduck 5s
        }
        ready

        # our changes to the default Corefile:

        rewrite name sso.helpwave.de keycloak-internal.keycloak.svc.cluster.local
        rewrite name staging-sso.helpwave.de sso.helpwave.de

        # end of changes

        kubernetes cluster.local in-addr.arpa ip6.arpa {
           pods insecure
           fallthrough in-addr.arpa ip6.arpa
           ttl 30
        }
        prometheus :9153
        forward . /etc/resolv.conf {
           max_concurrent 1000
        }
        cache 30
        loop
        reload
        loadbalance
    }
YAML
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
