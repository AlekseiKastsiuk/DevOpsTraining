resource "azurerm_network_security_rule" "nsg-rules" {
  resource_group_name         = var.az_rg_name
  network_security_group_name = var.nsg_name

  for_each                   = var.varrule
  name                       = each.value["name"]
  priority                   = each.value["priority"]
  direction                  = each.value["direction"]
  access                     = each.value["access"]
  protocol                   = each.value["protocol"]
  source_port_range          = each.value["source_port_range"]
  destination_port_range     = each.value["destination_port_range"]
  source_address_prefix      = each.value["source_address_prefix"]
  destination_address_prefix = each.value["destination_address_prefix"]
}