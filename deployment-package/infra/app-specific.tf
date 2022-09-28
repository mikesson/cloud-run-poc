# overwrite policies for more permissive project environment
module "sample-app" {
  source = "../modules/app"
  project = var.project
  region = var.region
  zone = var.zone
}