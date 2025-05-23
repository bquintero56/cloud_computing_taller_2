resource "azurerm_subnet_network_security_group_association" "internal_subnet_nsg" {
  subnet_id                 = azurerm_subnet.subnet_internal.id
  network_security_group_id = azurerm_network_security_group.nsg_internal.id
}
