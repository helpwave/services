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
}

variable "cf_zone_id" {
  type = string
}

variable "hw_mail" {
  type = string
  default = "info@helpwave.de"
}
