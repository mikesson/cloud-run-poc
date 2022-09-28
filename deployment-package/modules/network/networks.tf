variable "name" {
  type = string
}

variable "project" {
  type = string
}

resource "google_project_service" "compute_service" {
  project = var.project
  service = "compute.googleapis.com"
}

resource "google_compute_network" "default" {
  project                 = var.project
  name                    = var.name
  auto_create_subnetworks = true
  mtu                     = 1460

  depends_on = [
    google_project_service.compute_service
  ]
}