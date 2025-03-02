# Main Terraform Module File: Variables

variable "name" {
  description = "Name of the Resource Group (RG) to create"
  type        = string
}

variable "location" {
  description = "Azure region/location where the RG will be located"
  type        = string
}

variable "tags" {
  description = "Set of tags to add to the RG"
  type        = map(string)
  default     = {}
}

variable "rg_lock" {
  description = "Specifies the Level to be used for this RG Lock. Possible values are Empty (no lock), CanNotDelete, and ReadOnly."
  type        = string
  default     = ""
}
