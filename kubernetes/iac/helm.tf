resource "helm_release" "dapr" {
  name = "dapr"
  repository = "https://dapr.github.io/helm-charts"
  chart = "dapr"
  version = "1.9.5"

  depends_on = [
    google_container_cluster.staging,
    google_container_node_pool.primary_spot_nodes
  ]

  namespace = "dapr-system"
  create_namespace = true

  set {
    name = "global.ha.enabled"
    value = "false"
  }
}

resource "helm_release" "nginx" {
  name = "nginx-ingress"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart = "ingress-nginx"
  version = "4.4.2"

  depends_on = [
    google_container_cluster.staging,
    google_container_node_pool.primary_spot_nodes,
    helm_release.dapr
  ]

  namespace = "nginx"
  create_namespace = true

  set {
    name = "controller.replicaCount"
    value = 2
  }

  set {
    name = "controller.podAnnotations.dapr\\.io/enabled"
    value = "true"
  }

  set {
    name = "controller.podAnnotations.dapr\\.io/app-id"
    value = "nginx-ingress"
  }

  set {
    name = "controller.podAnnotations.dapr\\.io/app-port"
    value = "80"
  }

  set {
    name = "controller.podAnnotations.dapr\\.io/sidecar-listen-addresses"
    value = "0.0.0.0"
  }

  set {
    name = "controller.service.loadBalancerIP"
    value = google_compute_address.staging-ipv4.address
  }
}

resource "helm_release" "nginx-dapr" {
  name = "nginx-dapr"
  chart = "../nginx-dapr"

  depends_on = [
    google_container_cluster.staging,
    helm_release.dapr,
    helm_release.nginx
  ]

  namespace = "nginx"
  create_namespace = true

  set {
    name = "api.staging.hostname"
    value = cloudflare_record.staging-api-helpwave-de.hostname
  }

  set {
    name = "nginx.ingressDaprSidecar"
    value = "nginx-ingress-dapr"
  }
}
