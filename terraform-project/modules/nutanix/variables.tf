variable "nutanix_endpoint" {
  description = "The endpoint URL for the Nutanix cluster"
  type        = string
  default     = "https://your-nutanix-cluster-endpoint:9440"
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