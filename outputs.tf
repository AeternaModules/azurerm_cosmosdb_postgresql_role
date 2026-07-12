output "cosmosdb_postgresql_roles_id" {
  description = "Map of id values across all cosmosdb_postgresql_roles, keyed the same as var.cosmosdb_postgresql_roles"
  value       = { for k, v in azurerm_cosmosdb_postgresql_role.cosmosdb_postgresql_roles : k => v.id }
}
output "cosmosdb_postgresql_roles_cluster_id" {
  description = "Map of cluster_id values across all cosmosdb_postgresql_roles, keyed the same as var.cosmosdb_postgresql_roles"
  value       = { for k, v in azurerm_cosmosdb_postgresql_role.cosmosdb_postgresql_roles : k => v.cluster_id }
}
output "cosmosdb_postgresql_roles_name" {
  description = "Map of name values across all cosmosdb_postgresql_roles, keyed the same as var.cosmosdb_postgresql_roles"
  value       = { for k, v in azurerm_cosmosdb_postgresql_role.cosmosdb_postgresql_roles : k => v.name }
}
output "cosmosdb_postgresql_roles_password" {
  description = "Map of password values across all cosmosdb_postgresql_roles, keyed the same as var.cosmosdb_postgresql_roles"
  value       = { for k, v in azurerm_cosmosdb_postgresql_role.cosmosdb_postgresql_roles : k => v.password }
  sensitive   = true
}

