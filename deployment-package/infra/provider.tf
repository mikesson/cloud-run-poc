provider "google" {
  region = var.region
  zone   = var.zone
  project = "${var.project}"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.38.0"
    }
  }
}
