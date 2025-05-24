variable "nutanix_endpoint" {
  description = "The Nutanix API endpoint"
  type        = string
}

variable "nutanix_username" {
  description = "The username for the Nutanix API"
  type        = string
}

variable "nutanix_password" {
  description = "The password for the Nutanix API"
  type        = string
  sensitive   = true
}

variable "nutanix_cluster_name" {
  description = "The name of the Nutanix cluster to query"
  type        = string
}