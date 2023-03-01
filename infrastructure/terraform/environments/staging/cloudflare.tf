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

/* TODO
https://github.com/helpwave/services/pull/74
### Why bypassing Cloudflare and using cert-manager?
There are several requirements for tunneling gRPC through the Cloudflare proxy. The most important and obvious requirement is that our origin server (in our case *Google Cloud L4 LB* -> *APISIX*) must support TLS on Port 443 and SNI for the certificate that is issued by Cloudflare to establish the communication between the Cloudflare proxy and our origin server, also called ["Full - SSL/TLS encryption mode"](https://developers.cloudflare.com/ssl/origin-configuration/ssl-modes/full/). Sounds like a pretty usual setup.

Unfortunately, this triggers the following error in APISIX: `http_ssl_phase(): failed to fetch ssl config: failed to find SNI: please check if the client requests via IP or uses an outdated protocol. If you need to report an issue, provide a packet capture file of the TLS handshake.`.
*During my testing and debugging, the correct hostname was also in the log. That means APISIX was aware of the Hostname. And yes, the issued origin certificate was also in APISIX registered, and yes, also in the etcd. I've also swapped out APISIX with nginx (plus the origin certificate for sure) in our cluster, works perfectly fine.*
After hours of debugging, I've decided to go forward and ditching Cloudflare for now. It should be clear that the issue is most likely on the APISIX side, not Cloudflares. **Big TODO. We should dig into this.**
Here are similar errors, which have already been addressed but not solved yet
- https://github.com/apache/apisix/issues/4394
- https://github.com/apache/apisix/issues/8207

**With this pull-request, the IP of our GC LB is public and gets not proxied by Cloudflare. The SSL certificate gets issued by Lets Encrypt.**
*/

resource "cloudflare_record" "api-helpwave-de" {
  zone_id = var.cf_zone_id
  name = "api"
  value = google_compute_address.staging-ipv4.address
  type    = "A"
  comment = "Managed through Terraform"
  # Unproxied for now. See top.
  proxied = false
}

resource "cloudflare_record" "staging-helpwave-de" {
  zone_id = var.cf_zone_id
  name = "staging"
  value = cloudflare_record.api-helpwave-de.hostname
  type = "CNAME"
  comment = "Managed through Terraform"
  # Unproxied for now. See top.
  proxied = false
}

resource "cloudflare_record" "staging-api-helpwave-de" {
  zone_id = var.cf_zone_id
  name = "staging-api"
  value = cloudflare_record.api-helpwave-de.hostname
  type = "CNAME"
  comment = "Managed through Terraform"
  # Unproxied for now. See top.
  proxied = false
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
