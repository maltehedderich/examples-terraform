output "vm_public_ip_addresses" {
  value = azurerm_public_ip.public_ip[*].ip_address
}