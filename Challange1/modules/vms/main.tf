resource "azurerm_network_interface" "net-interface" {
  count = length(var.ni_names)
  name  = var.ni_names[count.index]

  //Define all other properties
}

resource "azurerm_virtual_machine" "vm" {
  count = length(var.vm_names)
  name  = var.vm_names[count.index]

  //Define all other properties
}

