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
  project     = var.project_id
  region      = var.region
  zone        = var.zone
  credentials = var.credentials # login menggunakan json key yang telah di create
}

data "google_compute_address" "external_static_ip" {
  name   = var.static_ip_name
  region = var.region
}

resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = var.machine_type
  tags = var.network_tags

  boot_disk {
    initialize_params {
      image = var.image
      # size  = var.boot_disk_size_gb
    }
  }

  network_interface {
    network    = var.network
    subnetwork = var.sub_network

    access_config {
      // Ephemeral public IP
      nat_ip = data.google_compute_address.external_static_ip.address
    }
  }
}
