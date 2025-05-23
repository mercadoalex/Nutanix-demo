variable "proxmox_vm_name" {
  description = "The name of the Proxmox virtual machine"
  type        = string
}

variable "proxmox_cpu" {
  description = "The number of CPUs for the Proxmox VM"
  type        = number
  default     = 2
}

variable "proxmox_memory" {
  description = "The amount of memory (in MB) for the Proxmox VM"
  type        = number
  default     = 2048
}

variable "proxmox_disk_size" {
  description = "The size of the disk (in GB) for the Proxmox VM"
  type        = number
  default     = 20
}
variable "proxmox_endpoint" {
  description = "The Proxmox API endpoint (e.g., https://proxmox.example.com:8006/api2/json)"
  type        = string
}

variable "proxmox_username" {
  description = "The username for the Proxmox API"
  type        = string
}

variable "proxmox_password" {
  description = "The password for the Proxmox API"
  type        = string
  sensitive   = true
}



variable "aws_instance_type" {
  description = "The type of AWS EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "aws_ami" {
  description = "The AMI ID for the AWS EC2 instance"
  type        = string
}

variable "aws_key_pair" {
  description = "The key pair name for the AWS EC2 instance"
  type        = string
}

variable "aws_region" {
  description = "The AWS region to deploy the EC2 instance"
  type        = string
  default     = "us-east-1"
}

variable "aws_security_group_ids" {
  description = "The security group IDs to associate with the EC2 instance"
  type        = list(string)
  default     = ["sg-0123456789abcdef0"]
}

variable "azure_vm_name" {
  description = "The name of the Azure virtual machine"
  type        = string
}

variable "azure_resource_group" {
  description = "The resource group for the Azure VM"
  type        = string
}

variable "azure_location" {
  description = "The location for the Azure VM"
  type        = string
  default     = "East US"
}

variable "nutanix_cluster_name" {
  description = "The name of the Nutanix cluster"
  type        = string
}

variable "nutanix_username" {
  description = "The username for Nutanix cluster access"
  type        = string
}

variable "nutanix_password" {
  description = "The password for Nutanix cluster access"
  type        = string
  sensitive   = true
}

variable "nutanix_resource_allocation" {
  description = "Resource allocation settings for Nutanix"
  type        = map(string)
}