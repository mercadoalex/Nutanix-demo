output "vm_id" {
  value = azurerm_linux_virtual_machine.example.id
}

output "public_ip" {
  value = azurerm_public_ip.example.ip_address
}