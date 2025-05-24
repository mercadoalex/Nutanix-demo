resource "azurerm_resource_group" "example" {
  name     = var.azure_resource_group_name
  location = var.azure_location
}

resource "azurerm_network_interface" "example_primary" {
  name                = "${var.azure_vm_name}-nic"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "internal"
    subnet_id                    = azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.example.id
  }
}

resource "azurerm_virtual_network" "example" {
  name                = "${var.azure_vm_name}-vnet"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "example" {
  name                 = "${var.azure_vm_name}-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_public_ip" "example" {
  name                = "${var.azure_vm_name}-public-ip"
  location            = var.azure_location
  resource_group_name = var.azure_resource_group_name
  allocation_method   = "Dynamic"
}

resource "azurerm_linux_virtual_machine" "example" {
  name                = var.azure_vm_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  size                = var.azure_vm_size
  admin_username      = var.azure_admin_username
  admin_password      = var.azure_admin_password
  network_interface_ids = [
    azurerm_network_interface.example_primary.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.azure_storage_account_type
    disk_size_gb         = varazure_os_disk_size_gb
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }
  tags = var.tags
}



