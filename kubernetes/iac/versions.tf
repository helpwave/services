terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.47.0"
    }

    helm = {
      source = "hashicorp/helm"
      version = "2.8.0"
    }
  }
}
