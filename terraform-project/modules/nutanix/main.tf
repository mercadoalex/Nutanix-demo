
resource "nutanix_vm" "example" {
  name              = var.vm_name
  cluster_id        = data.nutanix_cluster.example.id
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

