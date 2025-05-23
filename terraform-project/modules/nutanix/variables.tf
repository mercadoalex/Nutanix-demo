variable "cluster_name" {
  description = "The name of the Nutanix cluster."
  type        = string
}

variable "resource_allocation" {
  description = "Resource allocation settings for VMs on Nutanix."
  type        = map(string)
}

variable "network_settings" {
  description = "Network settings for VMs on Nutanix."
  type        = map(string)
}

variable "endpoint" {
  description = "The Nutanix API endpoint"
  type        = string
}
variable "username" {
  description = "The username for the Nutanix API"
  type        = string
}

variable "password" {
  description = "The password for the Nutanix API"
  type        = string
  sensitive   = true
}