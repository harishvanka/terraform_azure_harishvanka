module "storage_account" {
  source               = "./modules/storageaccount"
  environment          = "Dev"
  storage_account_name = "teststorageaccountvanka"
  resource_group_name  = "test-resource-group-anirudh"
  location             = "northcentralus"
  storage_account_tier = "Standard"
  storage_account_kind = "StorageV2"
}