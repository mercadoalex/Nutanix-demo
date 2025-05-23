variable "cluster_name" {
  description = "The name of the Nutanix cluster."
  type        = string
}

variable "username" {
  description = "The username for Nutanix cluster authentication."
  type        = string
}

variable "password" {
  description = "The password for Nutanix cluster authentication."
  type        = string
  sensitive   = true
}

variable "resource_allocation" {
  description = "Resource allocation settings for VMs on Nutanix."
  type        = map(string)
}

variable "network_settings" {
  description = "Network settings for VMs on Nutanix."
  type        = map(string)
}