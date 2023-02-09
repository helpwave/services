variable "dapr_ha" {
  type = bool
  default = false
}

variable "apisix_gateway_type" {
  type = string
  default = "NodePort"

  validation {
    condition = can(regex("^(NodePort|LoadBalancer)$", var.apisix_gateway_type))
    error_message = "Must be NodePort or LoadBalancer"
  }
}

variable "apisix_gateway_ip" {
  type = string
  default = ""
}

variable "apisix_gateway_tls" {
  type = bool
  default = true
}
