variable "base_name" {
  type = string
  description = "Some base name"
}
variable "location" {
  type        = string
  description = "The location, where the resources will be."
}
variable "vms_subnet_id" {
  type        = string
  description = "The location, where the resources will be."
}

variable "my_public_ip" {
  type        = string
  description = "What the public IPwill be."
}
variable "vms_subnet_id" {
  type        = string
  description = "The subnet."
  default = azurerm_subnet.general_network_vms.id
}

variable "my_public_ip" {
  type        = string
  description = "What the public IP will be."
}