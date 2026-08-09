rgs = {

  rg1 = {
    name     = "rg-manvit"
    location = "westus"
  }
}

vnets = {
  vnet1 = {
    name                = "vnet-manvit"
    location            = "westus"
    resource_group_name = "rg-manvit"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  frontend_subnet = {
    name                 = "frontend-subnet"
    resource_group_name  = "rg-manvit"
    virtual_network_name = "vnet-manvit"
    address_prefixes     = ["10.0.1.0/24"]
  }
  backend_subnet = {
    name                 = "backend-subnet"
    resource_group_name  = "rg-manvit"
    virtual_network_name = "vnet-manvit"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

pips = {
  pip1 = {
    name                = "pip1"
    location            = "westus"
    resource_group_name = "rg-manvit"
    allocation_method   = "Static"
    sku                 = "Standard"
  }
}

nics = {
  nic1 = {
    name                 = "nic1"
    location             = "westus"
    resource_group_name  = "rg-manvit"
    subnet_name          = "frontend-subnet"
    public_ip_id         = "pip1"
    virtual_network_name = "vnet-manvit"
    pip_name             = "pip1"
  }
}

vms = {
  vm1 = {
    vm_name             = "vm1"
    location            = "westus"
    resource_group_name = "rg-manvit"
    size                = "Standard_D2s_v3"
    admin_username      = "adminuser"
    admin_password      = "Password123"
    nic_name            = "nic1"
  }
}