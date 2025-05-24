variable "vm_name" {
  description = "The name of the Azure virtual machine."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the Azure VM will be created."
  type        = string
}

variable "location" {
  description = "The Azure region where the VM will be deployed."
  type        = string
}

variable "vm_size" {
  description = "The size of the Azure virtual machine."
  type        = string
}

variable "admin_username" {
  description = "The admin username for the Azure VM."
  type        = string
  default     = "adminuser"
}

variable "admin_password" {
  description = "The admin password for the Azure VM."
  type        = string
  sensitive   = true
}

variable "network_interface_id" {
  description = "The ID of the network interface to associate with the Azure VM."
  type        = string
}

variable "image_reference" {
  description = "The image reference for the Azure Virtual machine"
  type        = map(string)
}
variable "azure_network_interface_id" {
  description = "The ID of the Azure network interface to attach to the VM"
  type        = string
}
