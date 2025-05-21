resource "azurerm_storage_account" "storage_account" {
  for_each                 = var.stg77
  name                     = each.value.st
  resource_group_name      = each.value.name_rg
  location                 = each.value.location
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}