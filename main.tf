# Main Terraform Module File: Resources

locals {
  extra_tags = {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location

  tags = merge(var.tags, local.extra_tags, {
    "provisioner" = "terraform-azurerm-rg"
  })
}

resource "azurerm_management_lock" "rg_lock" {
  count      = var.rg_lock == "" ? 0 : 1
  name       = "${var.name}-mgmt-lock"
  scope      = azurerm_resource_group.rg.id
  lock_level = var.rg_lock
  notes      = "Resource Group: '${var.name}' is locked with '${var.rg_lock}' type mgmt lock."
}
