
locals {
  // TODO: use secrets when we swap out db
  er_svc_db_database = "helpwave"
  er_svc_db_username = "helpwave"
  er_svc_db_password = "helpwave"
}

resource "helm_release" "emergency_room_svc_db" {
  name  = "emergency-room-postgres"
  repository = "https://charts.bitnami.com/bitnami"
  chart = "postgresql"
  wait = true

  namespace = "emergency-room"
  create_namespace = true

  set {
    name  = "auth.enablePostgresUser"
    value = true
  }

  set {
    name  = "auth.database"
    value = local.er_svc_db_database
  }

  set {
    name  = "auth.username"
    value = local.er_svc_db_username
  }

  set {
    name  = "auth.password"
    value = local.er_svc_db_password
  }

  set {
    name  = "auth.postgresPassword"
    value = local.er_svc_db_password
  }
}

resource "helm_release" "emergency-room-svc" {
  name  = "emergency-room-svc"
  chart = "../../../charts/service"
  wait = true

  depends_on = [
    // helm_release.apisix,
    helm_release.emergency_room_svc_db
  ]

  namespace = "emergency-room"
  create_namespace = true

  set {
    name  = "app.name"
    value = "emergency-room"
  }

  set {
    name  = "image.repository"
    value = "ghcr.io/helpwave/emergency-room-svc"
  }

  set {
    name  = "image.tag"
    value = "edge"
  }

  set {
    name  = "image.pullPolicy"
    value = "Always"
  }

  set {
    name  = "service.enabled"
    value = true
  }

  set {
    name  = "keycloakDisabled"
    value = true
  }

  set {
    name  = "postgres.host"
    value = "emergency-room-postgres-postgresql.emergency-room"
  }

  set {
    name  = "postgres.user"
    value = "postgres"
  }

  set {
    name  = "postgres.database"
    value = local.er_svc_db_database
  }

  set {
    name  = "postgres.password"
    value = local.er_svc_db_password
  }
}
