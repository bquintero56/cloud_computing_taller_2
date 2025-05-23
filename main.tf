provider "azurerm" {
  features {}

  subscription_id = "(subscription-id)"
}


data "azurerm_resource_group" "rg" {
  name = "RG_VM"
}

module "network" {
  source = "./modules/network"

  resource_group_name     = "RG_VM"
  location                = "eastus"

  vnet_name               = "vnet-main"
  vnet_address_space      = ["10.0.0.0/16"]
  subnet_name             = "subnet-internal"
  subnet_address_prefixes = ["10.0.1.0/24"]
  nsg_name                = "nsg-internal"
}

# IPs públicas para VM1 y VM2
module "public_ip" {
  source = "./modules/public_ip"

  resource_group_name = "RG_VM"
  location            = "eastus"

  public_ip_vm1_name  = "public-ip-vm1"
  public_ip_vm2_name  = "public-ip-vm2"
}

# Cómputo (VM1, VM2, VM3)
module "compute" {
  source = "./modules/compute"

  resource_group_name = "RG_VM"
  location            = "eastus"

  subnet_id        = module.network.subnet_id
  public_ip_vm1_id = module.public_ip.public_ip_vm1_id
  public_ip_vm2_id = module.public_ip.public_ip_vm2_id

  admin_username   = "AdminUser2025"
  admin_password   = "M4quin4$Brq!2025"
}

# Almacenamiento
module "storage" {
  source                 = "./modules/storage"
  resource_group_name    = data.azurerm_resource_group.rg.name
  location               = data.azurerm_resource_group.rg.location
  storage_account_name   = "cloudstorageacc01"
  container_name         = "contenedor1"
}

# Monitorización
module "monitoring" {
  source              = "./modules/monitoring"
  vm_id               = module.compute.vm1_id
  email_receivers     = [
    {
      name          = "correo1"
      email_address = "tucorreo@tudominio.edu.co"
    }
  ]
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  storage_account_id  = module.storage.storage_account_id
}

