variable "nic_name" {
  description = "The name of the network interface."
  type        = string
  
}

variable "subnet_id" {
  description = "The ID of the subnet."
  type        = string

}

variable "public_ip_address_id" {
  description = "The ID of the public IP address."
  type        = string

}
variable "resource_name" {
  description = "The name of the resource group."
  type        = string

}
variable "location_name" {
  description = "The location of the network interface."
  type        = string

}
variable "vm_name" {
  description = "The name of the virtual machine."
  type        = string

}
variable "size" {
  description = "The size of the virtual machine."
  type        = string
} 

variable "admin_username" {
  description = "The administrator username for the virtual machine."
  type        = string  
  
}

variable "admin_password" {
  description = "The administrator password for the virtual machine."
  type        = string
  sensitive   = true 
  
}

variable "nsg_name" {
  description = "The name of the network security group."
  type        = string
}

# variable "public_ip_address" {
#   description = "The name of the public IP address."
#   type        = string
  
# }