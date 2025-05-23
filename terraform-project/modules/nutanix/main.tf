resource "nutanix_vm" "example" {
  name              = var.vm_name
  cluster_id        = var.cluster_id
  resources {
    num_vcpus = var.num_vcpus
    memory_mb = var.memory_mb
    disk {
      size_gb = var.disk_size
    }
  }
  network_interface {
    network_id = var.network_id
    ip_address = var.ip_address
  }
}

output "vm_id" {
  value = nutanix_vm.example.id
}

output "vm_ip" {
  value = nutanix_vm.example.network_interface[0].ip_address
}