resource "azurerm_public_ip" "vm2_public_ip" {
  name                = var.public_ip_vm2_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}
