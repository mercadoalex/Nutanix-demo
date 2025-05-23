variable "vm_name" {
  description = "The name of the Proxmox virtual machine"
  type        = string
}

variable "cpu" {
  description = "The number of CPUs for the Proxmox VM"
  type        = number
  default     = 2
}

variable "memory" {
  description = "The amount of memory (in MB) for the Proxmox VM"
  type        = number
  default     = 2048
}

variable "disk_size" {
  description = "The size of the disk (in GB) for the Proxmox VM"
  type        = number
  default     = 20
}

variable "network_bridge" {
  description = "The network bridge to connect the Proxmox VM"
  type        = string
  default     = "vmbr0"
}

variable "ip_address" {
  description = "The static IP address for the Proxmox VM"
  type        = string
}

variable "gateway" {
  description = "The gateway for the Proxmox VM"
  type        = string
}

variable "dns" {
  description = "The DNS servers for the Proxmox VM"
  type        = list(string)
  default     = ["8.8.8.8", "8.8.4.4"]
}