output "proxmox_vm_id" {
  value = proxmox_vm.vm.id
}

output "proxmox_vm_ip" {
  value = proxmox_vm.vm.network_interface[0].ip_address
}