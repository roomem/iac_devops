resource "azurerm_storage_account" "example" {
  name = "my-storage-account"
  location = var.default_location
  resource_group_name = var.resource_group_name

  account_tier = "Standard_LRS"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "example" {
  name = "azure_bucket_example"
  storage_account_name = "example"

  container_access_type = "private"
}