output "proxmox_vm_id" {
  value = proxmox_vm_qemu.vm.id
}

output "proxmox_vm_ip" {
  value = proxmox_vm_qemu.vm.network[0].ip
}
output "proxmox_vm_name" {
  value = proxmox_vm_qemu.vm.name
}