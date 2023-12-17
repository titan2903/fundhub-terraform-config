terraform {
  backend "gcs" {}
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.9.0"
    }
  }
}

provider "google" {
  credentials = var.credentials
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

resource "google_compute_address" "static_ip" {
  name         = var.name
  region       = var.region
  address_type = var.address_type
}
