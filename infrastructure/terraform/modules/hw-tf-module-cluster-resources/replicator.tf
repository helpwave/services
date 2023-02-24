resource "helm_release" "reflector" {
  name = "kubernetes-replicator"
  repository = "https://helm.mittwald.de"
  chart = "kubernetes-replicator"

  namespace = "default"
  create_namespace = false
}
