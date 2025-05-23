output "proxmox_vm_id" {
  value = module.proxmox-vm.vm_id
}

output "proxmox_vm_ip" {
  value = module.proxmox-vm.vm_ip
}

output "aws_ec2_instance_id" {
  value = module.aws-ec2.instance_id
}

output "aws_ec2_public_ip" {
  value = module.aws-ec2.public_ip
}

output "azure_vm_id" {
  value = module.azure-vm.vm_id
}

output "azure_vm_public_ip" {
  value = module.azure-vm.public_ip
}

output "nutanix_cluster_status" {
  value = module.nutanix.cluster_status
}

output "nutanix_vm_details" {
  value = module.nutanix.vm_details
}