variable "project" {
	type = string
}


variable "region" {
	type = string
}

variable "zone" {
	type = string
}


resource "google_sql_database_instance" "poll_database" {
  database_version = "POSTGRES_13"
  name             = "poll-database"
  project          = var.project
  region           = var.region

  settings {
    activation_policy = "ALWAYS"
    availability_type = "ZONAL"

    backup_configuration {
      backup_retention_settings {
        retained_backups = 7
        retention_unit   = "COUNT"
      }

      enabled                        = true
      location                       = "eu"
      point_in_time_recovery_enabled = true
      start_time                     = "22:00"
      transaction_log_retention_days = 7
    }

    disk_autoresize       = true
    disk_autoresize_limit = 0
    disk_size             = 20
    disk_type             = "PD_SSD"

    ip_configuration {
      ipv4_enabled = true
    }

    location_preference {
      zone = var.zone
    }

    pricing_plan = "PER_USE"
    tier         = "db-custom-1-3840"
  }
}
# terraform import google_sql_database_instance.poll_database_2 projects/software-delivery-workshop-02/instances/poll-database-2

resource "google_project_service" "sqladmin_service" {
  project = var.project
  service = "sqladmin.googleapis.com"
}