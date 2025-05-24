output "proxmox_vm_id" {
  value = module.proxmox_vm.vm_id
}

output "proxmox_vm_ip" {
  value = module.proxmox_vm.vm_ip
}

output "aws_ec2_instance_id" {
  value = module.aws_ec2.instance_id
}

output "aws_ec2_public_ip" {
  value = module.aws_ec2.public_ip
}

output "azure_vm_id" {
  value = module.azure_vm.vm_id
}

output "azure_vm_public_ip" {
  value = module.azure_vm.public_ip
}
