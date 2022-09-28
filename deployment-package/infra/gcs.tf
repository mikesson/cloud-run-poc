# create a default network, as argolis does not create one
module "remote-state" {
  source = "../modules/remote-state"
  multiregion = var.multiregion
}