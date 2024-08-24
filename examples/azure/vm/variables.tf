variable "resource_group_name" {
  description = "Name of the existing resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "West Europe"
}

variable "vnet_name" {
  description = "Name of the existing virtual network"
  type        = string
  default     = "vnet-dev"
}

variable "subnet_name" {
  description = "Name of the existing subnet"
  type        = string
  default     = "vm-subnet"
}

variable "nsg_name" {
  description = "Name of the existing network security group"
  type        = string
  default     = "dev-nsg" 
}

variable "vm_count" {
  description = "Number of VMs to create"
  type        = number
}

variable "vm_size" {
  description = "Size of the VM"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VMs"
  type        = string
}

variable "ssh_public_key" {
  description = "Path to SSH public key for VM access"
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
}
