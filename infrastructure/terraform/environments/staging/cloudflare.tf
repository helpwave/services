/*
resource "cloudflare_account" "helpwave" {
  name = "helpwave"

  lifecycle {
    prevent_destroy = true
  }
}

resource "cloudflare_zone" "helpwave-de" {
  account_id = cloudflare_account.helpwave.id
  zone = "helpwave.de"

  lifecycle {
    prevent_destroy = true
  }
}
*/

//
// API
//

resource "cloudflare_record" "api-helpwave-de" {
  zone_id = var.cf_zone_id
  name = "api"
  value = google_compute_address.staging-ipv4.address
  type    = "A"
  comment = "Managed through Terraform"
  proxied = true
}

resource "cloudflare_record" "staging-helpwave-de" {
  zone_id = var.cf_zone_id
  name = "staging"
  value = cloudflare_record.api-helpwave-de.hostname
  type = "CNAME"
  comment = "Managed through Terraform"
  proxied = true
}

resource "cloudflare_record" "staging-api-helpwave-de" {
  zone_id = var.cf_zone_id
  name = "staging-api"
  value = cloudflare_record.api-helpwave-de.hostname
  type = "CNAME"
  comment = "Managed through Terraform"
  proxied = true
}

//
// Keycloak
//

resource "cloudflare_record" "sso-helpwave-de" {
  zone_id = var.cf_zone_id
  name = "sso"
  value = cloudflare_record.api-helpwave-de.hostname
  type = "CNAME"
  comment = "Managed through Terraform"
  proxied = true
}

resource "cloudflare_record" "staging-sso-helpwave-de" {
  zone_id = var.cf_zone_id
  name = "staging-sso"
  value = cloudflare_record.sso-helpwave-de.hostname
  type = "CNAME"
  comment = "Managed through Terraform"
  proxied = true
}
