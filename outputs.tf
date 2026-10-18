output "resource_group_name" {
  description = "Nome do Azure Resource Group criado."
  value       = azurerm_resource_group.main.name
}

output "resource_group_id" {
  description = "ID do Azure Resource Group criado."
  value       = azurerm_resource_group.main.id
}

output "resource_group_location" {
  description = "Região do Azure Resource Group criado."
  value       = azurerm_resource_group.main.location
}
