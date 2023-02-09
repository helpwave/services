resource "kubernetes_persistent_volume_v1" "hostpath" {
  metadata {
    name = "hostpath"
  }
  spec {
    access_modes = ["ReadWriteMany"]
    capacity     = {
      storage = "1Gi"
    }
    persistent_volume_source {
      host_path {
        path = "/tmp"
      }
    }
  }
}

module "cluster-resources" {
  source = "../../modules/hw-tf-module-cluster-resources"
  depends_on = [
    kubernetes_persistent_volume_v1.hostpath
  ]
}
