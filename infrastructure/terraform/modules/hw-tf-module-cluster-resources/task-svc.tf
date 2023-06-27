
locals {
  // TODO: use secrets when we swap out db
  task_svc_db_database = "helpwave"
  task_svc_db_username = "helpwave"
  task_svc_db_password = "helpwave"
}

resource "helm_release" "task_svc_db" {
  name  = "task-postgres"
  repository = "https://charts.bitnami.com/bitnami"
  chart = "postgresql"
  wait = true

  namespace = "task"
  create_namespace = true

  set {
    name  = "auth.enablePostgresUser"
    value = true
  }

  set {
    name  = "auth.database"
    value = local.task_svc_db_database
  }

  set {
    name  = "auth.username"
    value = local.task_svc_db_username
  }

  set {
    name  = "auth.password"
    value = local.task_svc_db_password
  }

  set {
    name  = "auth.postgresPassword"
    value = local.task_svc_db_password
  }
}

resource "helm_release" "task-svc" {
  name  = "task-svc"
  chart = "../../../charts/service"
  wait = true

  depends_on = [
    helm_release.dapr,
    helm_release.task_svc_db
  ]

  namespace = "task"
  create_namespace = true

  set {
    name  = "app.name"
    value = "task"
  }

  set {
    name  = "image.repository"
    value = "ghcr.io/helpwave/task-svc"
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
    name  = "postgres.host"
    value = "task-postgres-postgresql.task"
  }

  set {
    name  = "postgres.user"
    value = "postgres"
  }

  set {
    name  = "postgres.database"
    value = local.task_svc_db_database
  }

  set {
    name  = "postgres.password"
    value = local.task_svc_db_password
  }
}
