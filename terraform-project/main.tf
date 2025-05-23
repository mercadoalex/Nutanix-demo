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

  required_version = ">= 1.0.0"
}

resource "nutanix_cluster" "example" {
  name     = var.cluster_name
  username = var.username
  password = var.password
  endpoint = var.endpoint
}

module "proxmox_vm" {
  source = "./modules/proxmox-vm"
  vm_name = var.proxmox_vm_name
  cpu     = var.proxmox_cpu
  memory  = var.proxmox_memory
  disk_size = var.proxmox_disk_size
}

module "aws_ec2" {
  source = "./modules/aws-ec2"
  instance_type = var.aws_instance_type
  ami            = var.aws_ami
  key_name       = var.aws_key_name
  security_groups = var.aws_security_groups
}

module "azure_vm" {
  source = "./modules/azure-vm"
  vm_name       = var.azure_vm_name
  resource_group = var.azure_resource_group
  location      = var.azure_location
  vm_size       = var.azure_vm_size
}
