module "network" {
 source = "../../modules/networking"

vnet_name = "lab-vnet"
address_space = {"10.0.0.0/16"}

subnets = {
 web = "10.0.1.0/24"
 app = "10.0.2.0/24"
 db = "10.0.3.0/24"
}

 rg_name = module.rg.name
 location = "eastus"
}
