module "gke" {
  source = "terraform-google-modules/kubernetes-engine/google"
  project_id = var.project_id
  name       = "${var.def_name}-clusterk8s"
  region     = var.region_prj
}
