output "public_ip_vm1_id" {
  value = azurerm_public_ip.vm1_public_ip.id
}

output "public_ip_vm2_id" {
  value = azurerm_public_ip.vm2_public_ip.id
}

output "public_ip_vm1_address" {
  value = azurerm_public_ip.vm1_public_ip.ip_address
}

output "public_ip_vm2_address" {
  value = azurerm_public_ip.vm2_public_ip.ip_address
}
