resource "google_compute_address" "staging-ipv4" {
  name = "helpwave-test-address-staging"
  region = var.gcp_region
}
