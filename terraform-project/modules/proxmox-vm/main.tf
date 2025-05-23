terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "~> 2.9.0"
    }
  }
}
resource "proxmox_vm_qemu" "vm" {
  name        = var.proxmox_vm_name
  target_node = var.proxmox_target_node
  clone       = var.proxmox_template_name
  os_type     = var.proxmox_os_type
  cores       = var.proxmox_cores
  memory      = var.proxmox_memory
  disk {
    size = var.proxmox_disk_size
    type    = var.proxmox_disk_type
    storage = var.proxmox_storage
  }

  network{
    model  = var.proxmox_network_model
    bridge = var.network_bridge
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'Alex you are the bestt.......Provisioning VM...'",
      "your_provisioning_commands_here"
    ]
  }
}

output "vm_id" {
  value = proxmox_vm_qemu.vm.id
}

output "vm_ip" {
  value = proxmox_vm_qemu.vm.network_interface[0].ip
}