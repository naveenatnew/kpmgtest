resource "azurerm_network_security_group" "nsg" {
  count = length(var.nsg_names)
  name  = var.nsg_names[count.index]

  //Define all other properties
}

resource "azurerm_subnet_network_security_group_association" "associate-nsg-subnet" { 
  //Define all properties
}

