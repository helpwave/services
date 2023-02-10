/*
  Dapr is the swiss-army knife of distributed development.
  It features a bunch of building blocks, e.g. it does service discovery, manages PubSub and simplifies tracing.

  cf. https://dapr.io/
      https://docs.dapr.io/developing-applications/building-blocks/
      https://docs.dapr.io/operations/
*/

//
// Variables
//

// Should Dapr run in High Availability mode?
// cf. https://bit.ly/3HSAvvn
variable "dapr_ha" {
  type = bool
  default = false
}

//
// Helm Release
//

resource "helm_release" "dapr" {
  name = "dapr"
  repository = "https://dapr.github.io/helm-charts"
  chart = "dapr"
  version = "1.9.5"

  namespace = "dapr-system"
  create_namespace = true

  set {
    name = "global.ha.enabled"
    value = var.dapr_ha
  }
}
