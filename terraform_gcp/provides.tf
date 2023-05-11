terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.57.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region_prj
  zone    = var.zone_prj
  credentials = "${file("${env.TF_VAR_GCP_CREDENTIALS}")}"
}