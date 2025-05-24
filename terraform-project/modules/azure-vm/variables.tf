variable "azure_vm_name" {
  description = "The name of the Azure virtual machine."
  type        = string
}

variable "azure_resource_group_name" {
  description = "The name of the resource group where the Azure VM will be created."
  type        = string
}

variable "azure_location" {
  description = "The Azure region where the VM will be deployed."
  type        = string
}

variable "azure_vm_size" {
  description = "The size of the Azure virtual machine (e.g., Standard_B2s)."
  type        = string
}

variable "azure_admin_username" {
  description = "The admin username for the Azure VM."
  type        = string
  default     = "adminuser"
}

variable "azure_admin_password" {
  description = "The admin password for the Azure VM."
  type        = string
  sensitive   = true
}

variable "azure_network_interface_id" {
  description = "The ID of the network interface to associate with the Azure VM."
  type        = string
}

variable "azure_image_reference" {
  description = "The image reference for the Azure Virtual Machine (e.g., Ubuntu 18.04)"
  type        = map(string)
  default = {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
}

variable "azure_os_disk_size_gb" {
  description = "The size of the OS disk in GB for the Azure VM."
  type        = number
  default     = 30
}
variable "azure_storage_account_type" {
  description = "The storage account type for the OS disk."
  type        = string
  default     = "Standard_LRS"
}
variable "tags" {
  description = "A map of tags to assign to the Azure resources."
  type        = map(string)
  default     = {demo = "nutanix", environment = "dev"}
}
