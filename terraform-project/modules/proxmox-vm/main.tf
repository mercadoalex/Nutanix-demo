resource "proxmox_vm_qemu" "vm" {
  name        = var.vm_name
  target_node = var.target_node
  clone       = var.template_name

  os_type     = var.os_type
  cores       = var.cores
  memory      = var.memory
  disk {
    size = var.disk_size
  }

  network_interface {
    model = var.network_model
    bridge = var.network_bridge
  }

  provisioner "remote-exec" {
    inline = [
      "echo 'Provisioning VM...'",
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