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

variable "cf_api_token" {
  type = string
  sensitive = true
}

variable "cf_zone_id" {
  type = string
}

variable "cm_cf_api_token" {
  type = string
  description = "Cloudflare API token used by cert-manager for ACME DNS01"
  sensitive = true
}

variable "hw_mail" {
  type = string
  default = "info@helpwave.de"
}
