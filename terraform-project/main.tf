terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "~> 2.9.0" # Use the latest stable version
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    nutanix = {
      source  = "nutanix/nutanix"
      version = "~> 1.5.0"
    }
  }
}
  
provider "nutanix" {
    endpoint = var.nutanix.endpoint
    username = var.nutanix.username
    password = var.nutanix.password
  }

data "nutanix_cluster" "example" {
  name = var.nutanix_cluster_name
}
output "cluster_id" {
  value = data.nutanix_cluster.example.id
}
output "cluster_name" {
  value = data.nutanix_cluster.example.name
}



module "proxmox_vm" {
  source                = "./modules/proxmox-vm"
  proxmox_vm_name       = var.proxmox_vm_name
  proxmox_cores         = var.proxmox_cores
  proxmox_memory        = var.proxmox_memory
  proxmox_disk_size     = var.proxmox_disk_size
  proxmox_gateway       = var.proxmox_gateway
  proxmox_network       = var.proxmox_network
  proxmox_datastore     = var.proxmox_datastore
  proxmox_ip_address    = var.proxmox_ip_address
  proxmox_target_node   = var.proxmox_target_node
  proxmox_os_type       = var.proxmox_os_type
  proxmox_template_name = var.proxmox_template_name
}

module "aws_ec2" {
  source             = "./modules/aws-ec2"
  instance_type      = var.aws_instance_type
  ami                = var.aws_ami
  key_name           = var.aws_key_name
  security_group_ids = var.aws_security_group_ids
}

module "azure_vm" {
  source               = "./modules/azure-vm"
  vm_name              = var.azure_vm_name
  resource_group_name  = var.azure_resource_group
  location             = var.azure_location
  vm_size              = var.azure_vm_size
  admin_username       = var.azure_admin_username
  admin_password       = var.azure_admin_password
  image_reference      = var.azure_image_reference
  network_interface_id = azurerm_network_interface.example_primary.id
}
 Terraform interacts with the Proxmox API over the network, so you only need access to a running Proxmox server or cluster.

