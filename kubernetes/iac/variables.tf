variable "gcp_project" {
  type = string
}

variable "gcp_region" {
  type    = string
  default = "europe-west3"
}

variable "gcp_zone" {
  type    = string
  default = "europe-west3-b"
}

variable "gcp_public_ipv4" {
  type = string
}
