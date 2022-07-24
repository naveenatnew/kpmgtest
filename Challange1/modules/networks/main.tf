resource "azurerm_virtual_network" "vnet1" {
  //Define all the properties
}

resource "azurerm_subnet" "subnet" {
  count = length(var.subnet_names)
  name  = var.subnet_names[count.index]

  //Define all the properties
}
