variable "docker_tag" {
  type    = string
  default = null
}

variable "namespace" {
  default = "db-operator-system"
}

variable "install_operator" {
  type        = bool
  description = "You can apply multiple installations of this module, one to run the operator and a separate one to configur backups"
}

variable "docker_repository" {
  default = "obeleh/db-operator"
}

variable "installation_name" {
  default     = "db-operator"
  description = "Helm Installation Name to be used"
}

variable "create_namespace" {
  type = bool
}

# Custom Resources

variable "users" {
  default = []
}

variable "user_secrets" {
  default = []
}

variable "s3_storages" {
  default = []
}

variable "s3_secrets" {
  default = []
}

variable "db_servers" {
  default = []
}

variable "dbs" {
  default = []
}

variable "backup_targets" {
  default = []
}

variable "backup_jobs" {
  default = []
}

variable "backup_cronjobs" {
  default = []
}

variable "restore_targets" {
  default = []
}

variable "restore_cronjobs" {
  default = []
}

variable "restore_jobs" {
  default = []
}

variable "dbcopy_cronjobs" {
  default = []
}

variable "dbcopy_jobs" {
  default = []
}
