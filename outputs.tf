# Main Terraform Module File: Outputs

output "resource_group_name" {
  value       = azurerm_resource_group.rg.name
  description = "Resource group name"
}

output "resource_group_id" {
  value       = azurerm_resource_group.rg.id
  description = "Resource group generated id"
}