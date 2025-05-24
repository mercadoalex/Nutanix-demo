output "cluster_status" {
  value = module.nutanix.cluster_status
}

output "vm_details" {
  value = module.nutanix.vm_details
}
output "vm_id" {
  value = nutanix_vm.example.id
}

output "vm_ip" {
  value = nutanix_vm.example.network_interface[0].ip_address
}