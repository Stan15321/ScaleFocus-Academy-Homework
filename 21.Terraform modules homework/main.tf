terraform {
  backend "azurerm" {}
}
provider "azurerm" {
  features {}
}
data "azurerm_subscription" "current" {}
locals {
  base_name = "${var.my_name}-${var.environment}"
  network_base_name = "${local.base_name}-ntwrk"
}

resource "azurerm_resource_group" "rg1" {
  name     = "${local.network_base_name}-rg"
  location = var.location
}

resource "azurerm_virtual_network" "vn1" {
  name                = "${local.network_base_name}-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg1.location
  resource_group_name = azurerm_resource_group.rg1.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "${azurerm_virtual_network.vn1.name}-vms-snet"
  resource_group_name  = azurerm_resource_group.rg1.name
  virtual_network_name = azurerm_virtual_network.vn1.name
  address_prefixes     = ["10.0.2.0/24"]
}

module "vm" {
  source = "./vm_module"
  base_name = local.base_name
  location = var.location
  
}