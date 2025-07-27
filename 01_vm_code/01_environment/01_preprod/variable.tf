variable "resource_name" {
  description = "The name of the resource"
  type        = string
}

variable "location_name" {
  description = "The Azure region where the resources will be created"
  type        = string 
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string 
}

variable "public_ip_name" {
  description = "The name of the public IP address"
  type        = string
}

variable "allocation_method" {
  description = "The allocation method for the public IP address (Static or Dynamic)"
  type        = string    
}

variable "nic_name" {
  description = "The name of the network interface"
  type        = string    
}

variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
}
variable "size" {
  description = "The size of the virtual machine"
  type        = string
}

variable "nsg_name" {
  description = "The name of the network security group"
  type        = string

}


