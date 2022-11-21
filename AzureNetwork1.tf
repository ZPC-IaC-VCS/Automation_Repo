resource "azurerm_network_security_group" "example2_network1" {
  name                = "acceptanceTestSecurityGroup1"
  location            = "West Europe"
  resource_group_name = "example-resources"
  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "TCP"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "Internet"
    destination_address_prefix = "*"
  }
  tags = {
    environment = "Production"
  }
}
