resource "kubectl_manifest" "hostpath" {
  yaml_body = <<YAML
apiVersion: v1
kind: PersistentVolume
metadata:
  name: hostpath
spec:
  accessModes:
  - ReadWriteMany
  capacity:
    storage: 1Gi
  hostPath:
    path: /tmp
  persistentVolumeReclaimPolicy: Retain
  volumeMode: Filesystem
YAML
}

module "cluster-resources" {
  source = "../../modules/hw-tf-module-cluster-resources"
  depends_on = [
    kubectl_manifest.hostpath
  ]

  keycloak_hostname = "localhost"
}
