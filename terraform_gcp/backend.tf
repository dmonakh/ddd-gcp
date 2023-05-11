terraform {
  backend "gcs" {
    bucket = "mondybucketgcp"
    prefix = "terraform/state"
    credentials = "${file("${env.TF_VAR_GCP_CREDENTIALS}")}"
  }
}