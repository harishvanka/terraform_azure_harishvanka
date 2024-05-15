module "resource_group" {
    source = "./modules/resourcegroup"
    resource_group_name = "test-resource-group-anirudh"
    location = "northcentralus"
    environment = "Dev"
}

