output "cosmosdb_postgresql_roles" {
  description = "All cosmosdb_postgresql_role resources"
  value       = azurerm_cosmosdb_postgresql_role.cosmosdb_postgresql_roles
  sensitive   = true
}
output "cosmosdb_postgresql_roles_cluster_id" {
  description = "List of cluster_id values across all cosmosdb_postgresql_roles"
  value       = [for k, v in azurerm_cosmosdb_postgresql_role.cosmosdb_postgresql_roles : v.cluster_id]
}
output "cosmosdb_postgresql_roles_name" {
  description = "List of name values across all cosmosdb_postgresql_roles"
  value       = [for k, v in azurerm_cosmosdb_postgresql_role.cosmosdb_postgresql_roles : v.name]
}
output "cosmosdb_postgresql_roles_password" {
  description = "List of password values across all cosmosdb_postgresql_roles"
  value       = [for k, v in azurerm_cosmosdb_postgresql_role.cosmosdb_postgresql_roles : v.password]
  sensitive   = true
}

