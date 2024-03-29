locals {
  cert_manager_namespace = "cert-manager"
  apisix_namespace = "apisix"
}

resource "kubectl_manifest" "cert_cloudflare_api_token_secret" {
  depends_on = [
    helm_release.cert-manager
  ]

  sensitive_fields = [
    "stringData"
  ]

  yaml_body = <<YAML
apiVersion: v1
kind: Secret
metadata:
  name: cloudflare-api-token
  namespace: ${local.cert_manager_namespace}
type: Opaque
stringData:
  api-token: ${var.cm_cf_api_token}
YAML
}

resource "kubectl_manifest" "cert_issuer_letsencrypt" {
  depends_on = [
    helm_release.cert-manager
  ]

  yaml_body = <<YAML
apiVersion: cert-manager.io/v1
kind: Issuer
metadata:
  name: letsencrypt
  namespace: ${local.cert_manager_namespace}
spec:
  acme:
    server: https://acme-v02.api.letsencrypt.org/directory
    email: ${var.cm_acme_email}
    privateKeySecretRef:
      name: letsencrypt
    solvers:
      - dns01:
          cloudflare:
            apiTokenSecretRef:
              name: cloudflare-api-token
              key: api-token
YAML
}

resource "kubectl_manifest" "cert_certificate_x-helpwave-de" {
  depends_on = [
    helm_release.cert-manager
  ]

  yaml_body = <<YAML
apiVersion: cert-manager.io/v1
kind: Certificate
metadata:
  name: x-helpwave-de
  namespace: ${local.cert_manager_namespace}
spec:
  secretName: x-helpwave-de
  dnsNames:
    - ${cloudflare_record.api-helpwave-de.hostname}
    - ${cloudflare_record.staging-helpwave-de.hostname}
    - ${cloudflare_record.staging-api-helpwave-de.hostname}
    - ${cloudflare_record.tasks-helpwave-de.hostname}
    - ${cloudflare_record.staging-tasks-helpwave-de.hostname}
  issuerRef:
    name: letsencrypt
    kind: Issuer
    group: cert-manager.io
YAML
}

resource "kubectl_manifest" "cert_apisix_tls_x-helpwave-de" {
  depends_on = [
    module.cluster-resources
  ]

  yaml_body = <<YAML
apiVersion: apisix.apache.org/v2
kind: ApisixTls
metadata:
  name: x-helpwave-de
  namespace: apisix
spec:
  hosts:
    - ${cloudflare_record.api-helpwave-de.hostname}
    - ${cloudflare_record.staging-helpwave-de.hostname}
    - ${cloudflare_record.staging-api-helpwave-de.hostname}
    - ${cloudflare_record.tasks-helpwave-de.hostname}
    - ${cloudflare_record.staging-tasks-helpwave-de.hostname}
  secret:
    name: x-helpwave-de
    namespace: cert-manager
YAML
}
