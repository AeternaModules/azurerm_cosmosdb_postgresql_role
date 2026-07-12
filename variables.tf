variable "cosmosdb_postgresql_roles" {
  description = <<EOT
Map of cosmosdb_postgresql_roles, attributes below
Required:
    - cluster_id
    - name
    - password
    - password_key_vault_id (alternative to password - read from Key Vault instead)
    - password_key_vault_secret_name (alternative to password - read from Key Vault instead)
EOT

  type = map(object({
    cluster_id                     = string
    name                           = string
    password                       = string
    password_key_vault_id          = optional(string)
    password_key_vault_secret_name = optional(string)
  }))
}

