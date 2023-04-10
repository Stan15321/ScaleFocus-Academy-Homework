variable "my_name" {
  type = string
  description = "First name of the student"
}
resource "azurerm_resource_group" "example2" {
  name     = "${var.my_name}-${random_string.random.result}-rg"
  location = var.location
}

variable "location" {
  type        = string
  description = "The location where all resources will be placed."
  default     = "West Europe"
}

