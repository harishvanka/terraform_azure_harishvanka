resource "azurerm_storage_account" "main" {
  name                              = var.storage_account_name
  resource_group_name               = var.resource_group_name
  location                          = var.location
  account_tier                      = var.storage_account_tier
  account_replication_type          = var.storage_account_replication_type
  account_kind                      = var.storage_account_kind
  public_network_access_enabled     = false
  min_tls_version                   = var.minimum_tls_version
  is_hns_enabled                    = var.enable_hns

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = false
  }

  sas_policy {
    expiration_period = "00.01:00:00"
  }
   
  blob_properties {
    versioning_enabled = !var.enable_hns
    delete_retention_policy {
      days = var.retention_days
    }
    container_delete_retention_policy {
      days = var.retention_days
    }
  }

  tags = local.tags
}