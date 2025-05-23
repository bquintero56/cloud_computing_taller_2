resource "azurerm_public_ip" "vm1_public_ip" {
  name                = var.public_ip_vm1_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}
