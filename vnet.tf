module "vnet" {
  source              = "./modules/vnet"
  vnet_name           = "testvnet"
  resource_group_name = "test-resource-group-anirudh"
  location            = "northcentralus"
  address_space       = ["10.0.1.0/24"]
  environment         = "Dev"
}