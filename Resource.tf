resource "azurerm_resource_group" "Test" {
  name     = "Test1"
  location = "West Europe"
}
resource "azurerm_storage_account" "storegetest" {
  name                     = "storagearvind"
  resource_group_name      = azurerm_resource_group.Test.name
  location                 = azurerm_resource_group.Test.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}
