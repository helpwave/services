data "google_client_config" "staging" {}

resource "google_container_cluster" "staging" {
  name = "helpwave-test-gke-staging"
  location = var.gcp_zone // zonal cluster

  remove_default_node_pool = true
  initial_node_count = 1
}

resource "google_container_node_pool" "primary_spot_nodes" {
  name = "primary-spot-nodes"
  cluster = google_container_cluster.staging.id

  // initial_node_count = 2
  node_count = 3
  lifecycle {
    ignore_changes = [
      initial_node_count
    ]
  }

  /*
  autoscaling {
    location_policy = "ANY"
    min_node_count = 1
    max_node_count = 3
  }
  */

  upgrade_settings {
    max_surge = 1
    max_unavailable = 0
  }

  node_config {
    machine_type = "e2-medium"

    disk_type = "pd-standard"
    disk_size_gb = 10

    spot = true

    metadata = {
      "disable-legacy-endpoints" = true
    }
  }
}

module "cluster-resources" {
  source = "../../modules/hw-tf-module-cluster-resources"

  depends_on = [
    google_container_cluster.staging,
    google_container_node_pool.primary_spot_nodes,
    google_compute_address.staging-ipv4
  ]

  apisix_gateway_type = "LoadBalancer"
  apisix_gateway_ip = google_compute_address.staging-ipv4.address
}
