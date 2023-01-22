provider "google" {
  project = var.gcp_project
  region = var.gcp_region
  zone = var.gcp_zone
}

provider "helm" {
  kubernetes {
    host  = "https://${google_container_cluster.staging.endpoint}"
    token = data.google_client_config.staging.access_token
    cluster_ca_certificate = base64decode(google_container_cluster.staging.master_auth.0.cluster_ca_certificate)
  }
}
