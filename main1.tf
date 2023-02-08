# resource "azurerm_resource_group" "example" {
#   name     = var.rg_name1
#   location = var.rg_loc1
# }

resource "azurerm_public_ip" "example" {
  name                = var.public_ip_name
  
  # resource_group_name = azurerm_resource_group.example.name
  # location            = azurerm_resource_group.example.location
  resource_group_name = var.rg_name1
  location = var.rg_loc1

  allocation_method   = "Static"

   tags = {
     environment = "Production"
   }
}
