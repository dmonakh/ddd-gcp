terraform {
  backend "gcs" {
    bucket = "mondybucketgcp"
    prefix = "terraform/state"
    credentials = var.gcp_credentials
  }
}