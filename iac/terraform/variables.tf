variable "resource_group_name" {
  type = string
}

variable "default_location" {
  type = string
}

variable "tag" {
  type = string
  description = "tag del progetto"
}

variable "appId" {
  type = string
  description = "Azure Application ID"
}

variable "password" {
  type = string
  description = "Azure application password"
}


variable "vnet_name" {
  description = "Nome della Virtual Network"
}

variable "address_space" {
  description = "Spazio degli indirizzi della VNet"
}

variable "subnet_prefixes" {
  description = "Prefissi delle subnet"
}

variable "nsg_name" {
  type = string
  description = "Nome del Network Security Group"
}

