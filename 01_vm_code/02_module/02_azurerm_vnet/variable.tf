variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
  
}

variable "location_name" {
  description = "The location of the virtual network."
  type        = string

}

variable "resource_name" {
  description = "The name of the resource group."
  type        = string

}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)

}