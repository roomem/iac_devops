resource_group_name = "BU-MT"
default_location = "westeurope"

tag = "rome_1"
//VNET
vnet_name           = "rome_vnet_1"
address_space       = ["10.0.0.0/16"]
subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24"]
//NSG
nsg_name = "rome_nsg_1"
//AKS
aks_name = "rome_1"
dns_prefix = "rome_1"


