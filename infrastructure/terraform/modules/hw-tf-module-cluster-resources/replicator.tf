/*
  kubernetes-replicator is a utility for replicating namespace-bound resources (Secrets, Config Maps and RoleBindings)
  into different namespaces.

  cf. https://github.com/mittwald/kubernetes-replicator
*/

resource "helm_release" "reflector" {
  name = "kubernetes-replicator"
  repository = "https://helm.mittwald.de"
  chart = "kubernetes-replicator"

  namespace = "default"
  create_namespace = false
}
