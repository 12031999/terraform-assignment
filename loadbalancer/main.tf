resource "azurerm_public_ip" "pip" {
  name                = "${var.id}-lb-public-ip"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Dynamic"
  sku                 = "Basic"
}

resource "azurerm_lb" "loadbalancer" {
  name                = "n4361-lb"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "Basic" 

  frontend_ip_configuration {
    name                 = "LoadBalancerFrontEnd"
    public_ip_address_id = var.public_ip_address_ids[0] 
  }
}


resource "azurerm_lb_backend_address_pool" "backend_address_pool" {
  loadbalancer_id = azurerm_lb.loadbalancer.id
  name            = "BackendAddressPool"
}

resource "azurerm_network_interface_backend_address_pool_association" "backend_association" {
  count                   = length(var.linux_virtualmachine_nic_ids)
  network_interface_id    = var.linux_virtualmachine_nic_ids[count.index]
  ip_configuration_name   = "ipconfig"
  backend_address_pool_id = azurerm_lb_backend_address_pool.backend_address_pool.id
}


resource "azurerm_lb_backend_address_pool" "pool" {
  name                = "${var.id}-backend-pool"
  loadbalancer_id     = azurerm_lb.loadbalancer.id
}

resource "azurerm_lb_nat_pool" "nat" {
  count = 2

  resource_group_name = var.resource_group_name
  loadbalancer_id     = azurerm_lb.loadbalancer.id
  name                = "NatPool${count.index + 1}"

  backend_port      = 22
  protocol          = "Tcp"
  frontend_ip_configuration_name = "LoadBalancerFrontEnd"
  frontend_port_start = 50000 + count.index * 1000
  frontend_port_end   = 50999 + count.index * 1000
}


resource "azurerm_network_interface_backend_address_pool_association" "backend_pool_association" {
  count = length(var.linux_virtualmachine_nic_ids)

  network_interface_id    = var.linux_virtualmachine_nic_ids[count.index]
  ip_configuration_name   = "ipconfig"
  backend_address_pool_id = azurerm_lb_backend_address_pool.pool.id
}

