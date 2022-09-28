# overwrite policies for more permissive project environment
module "argolis-gke-policies" {
  source = "../modules/argolis-permissive-policies"
  project = var.project
}

# create a default network, as argolis does not create one
module "network" {
  source = "../modules/network"
  project = var.project
  name = var.network
}