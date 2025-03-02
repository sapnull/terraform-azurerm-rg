# Main Terraform Provider and Versions File: Required Providers and Versions

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.20.0"
    }
  }
  required_version = ">= 1.0"
}
