variable "my_name" {
  type = string
  description = "First name of the student"
}

variable "environment" {
  type        = string
  description = "The environment, where all resources will be placed."
}

variable "location" {
  type        = string
  description = "The location, where the resources will be."
}
