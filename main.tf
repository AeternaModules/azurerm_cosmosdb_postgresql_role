data "azurerm_key_vault_secret" "password" {
  for_each     = { for k, v in var.cosmosdb_postgresql_roles : k => v if v.password_key_vault_id != null && v.password_key_vault_secret_name != null }
  name         = each.value.password_key_vault_secret_name
  key_vault_id = each.value.password_key_vault_id
}
resource "azurerm_cosmosdb_postgresql_role" "cosmosdb_postgresql_roles" {
  for_each = var.cosmosdb_postgresql_roles

  cluster_id = each.value.cluster_id
  name       = each.value.name
  password   = each.value.password != null ? each.value.password : try(data.azurerm_key_vault_secret.password[each.key].value, null)
}

