/*
operator:
  install: true
  image:
    repository: obeleh/db-operator
    tag: "b2b1a7c"
  namespace: db-operator-system
*/

resource "helm_release" "db-operator" {
  name             = var.installation_name
  namespace        = var.namespace
  repository       = "https://obeleh.github.io/db-operator/helm/"
  chart            = "db-operator"
  version          = "0.1.6"
  create_namespace = var.create_namespace
  values = [
    yamlencode({
      "operator" : {
        "install" : var.install_operator
        "namespace" : var.namespace
        "image" : {
          "repository" : var.docker_repository
          "tag" : var.docker_tag
        }
      }
      "Users" : var.users
      "UserSecrets" : var.user_secrets
      "S3Storages" : var.s3_storages
      "S3Secrets" : var.s3_secrets
      "DbServers" : var.db_servers
      "Dbs" : var.dbs
      "BackupTargets" : var.backup_targets
      "BackupJobs" : var.backup_jobs
      "BackupCronJobs" : var.backup_cronjobs
      "RestoreTargets" : var.restore_targets
      "RestoreCronJobs" : var.restore_cronjobs
      "RestoreJobs" : var.restore_jobs
      "DbCopyJobs" : var.dbcopy_jobs
    })
  ]
}
