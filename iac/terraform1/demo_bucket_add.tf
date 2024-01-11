resource "azurerm_storage_account" "example" {
  name = "rome_stg"
  location = var.default_location
  resource_group_name = var.resource_group_name

  account_tier = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "example" {
  name = "rome_bkt"
  storage_account_name = azurerm_storage_account.example.name

  container_access_type = "private"
}
