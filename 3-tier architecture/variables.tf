variable "prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = "msa"
}
variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}
variable "admin_username" {
  description = "Admin username for VMs"
  type        = string
  default     = "azureadmin"
}
variable "ssh_public_key" {
  description = "SSH public key"
  type        = string
  sensitive   = true
}
