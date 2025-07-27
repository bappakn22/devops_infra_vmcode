variable "public_ip_name" {
  description = "The name of the public IP."
  type        = string
}

variable "resource_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location_name" {
  description = "The location of the public IP."
  type        = string
}

variable "allocation_method" {
  description = "The allocation method for the public IP."
  type        = string
}
