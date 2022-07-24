provider "azurerm" {
  features {}
}

module "rg" {
  source         = "./modules/rg" 
  //Define all the properities
}

module "networks" {
  source         = "./modules/networks"
  //Define all the properities
}

module "securitygroups" {
  source         = "./modules/securitygroups"
  //Define all the properities
}

module "vms" {
  source         = "./modules/vms"
  //Define all the properities
}

module "db" {
  source = "./modules/db"
  //Define all the properities
}
