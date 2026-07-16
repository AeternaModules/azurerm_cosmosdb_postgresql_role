output "cosmosdb_postgresql_roles_id" {
  description = "Map of id values across all cosmosdb_postgresql_roles, keyed the same as var.cosmosdb_postgresql_roles"
  value       = { for k, v in azurerm_cosmosdb_postgresql_role.cosmosdb_postgresql_roles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cosmosdb_postgresql_roles_cluster_id" {
  description = "Map of cluster_id values across all cosmosdb_postgresql_roles, keyed the same as var.cosmosdb_postgresql_roles"
  value       = { for k, v in azurerm_cosmosdb_postgresql_role.cosmosdb_postgresql_roles : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "cosmosdb_postgresql_roles_name" {
  description = "Map of name values across all cosmosdb_postgresql_roles, keyed the same as var.cosmosdb_postgresql_roles"
  value       = { for k, v in azurerm_cosmosdb_postgresql_role.cosmosdb_postgresql_roles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cosmosdb_postgresql_roles_password" {
  description = "Map of password values across all cosmosdb_postgresql_roles, keyed the same as var.cosmosdb_postgresql_roles"
  value       = { for k, v in azurerm_cosmosdb_postgresql_role.cosmosdb_postgresql_roles : k => v.password if v.password != null && length(v.password) > 0 }
  sensitive   = true
}

