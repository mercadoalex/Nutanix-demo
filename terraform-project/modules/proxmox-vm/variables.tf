variable "proxmox_vm_name" {
  description = "The name of the Proxmox virtual machine"
  type        = string
}
variable "proxmox_target_node" {
  description = "The Proxmox node where the VM will be created"
  type        = string
}
variable "proxmox_template_name" {
  description = "The name of the template to clone for the VM"
  type        = string
}
variable "proxmox_os_type" {
  description = "The operating system type for the VM (e.g., linux, windows)"
  type        = string
}
variable "proxmox_cores" {
  description = "The number of CPU cores for the VM"
  type        = number
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
variable "proxmox_disk_type" {
  description = "The type of disk for the Proxmox VM (e.g., scsi, ide, virtio)"
  type        = string
  default     = "scsi"
}
variable "proxmox_storage" {
  description = "The storage location for the Proxmox VM"
  type        = string
  default     = "local-lvm"
}


variable "network_bridge" {
  description = "The network bridge to connect the Proxmox VM"
  type        = string
  default     = "vmbr0"
}

variable "proxmox_ip_address" {
  description = "The static IP address for the Proxmox VM"
  type        = string
}

variable "proxmox_gateway" {
  description = "The gateway for the Proxmox VM"
  type        = string
  default     = "192.168.1.1"
}

variable "dns" {
  description = "The DNS servers for the Proxmox VM"
  type        = list(string)
  default     = ["8.8.8.8", "8.8.4.4"]
}
variable "proxmox_network" {
  description = "The network for the Proxmox VM"
  type        = string
}
variable "proxmox_network_model" {
  description = "The network model for the Proxmox VM (e.g., virtio, e1000)"
  type        = string
  default     = "virtio" # Default to virtio if not specified
}

variable "proxmox_datastore" {
  description = "The datastore for the Proxmox VM"
  type        = string
}