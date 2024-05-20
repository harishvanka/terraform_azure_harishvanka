module "subnet2" {
  source               = "./modules/subnet"
  resource_group_name  = "test-resource-group-anirudh"
  environment          = "Dev"
  virtual_network_name = module.vnet.virtual_network_name
  address_prefixes     = ["10.0.2.0/24"]
}