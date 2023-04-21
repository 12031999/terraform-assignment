module "rgroup" {
  source     = "./rgroup"
  id         = "n4361"
  location   = "East US"
  tags = {
    Project        = "Automation Project – Assignment 2"
    Name           = "yatin.phullera"
    ExpirationDate = "2023-06-30"
    Environment    = "Lab"
  }
}

module "network" {
  source             = "./network"
  id                  = "n4361"
  resource_group_name = module.rgroup.name
  location           = "East US"
  tags = {
    Project        = "Automation Project – Assignment 2"
    Name           = "yatin.phullera"
    ExpirationDate = "2023-06-30"
    Environment    = "Lab"
  }
}
module "common" {
  source             = "./common"
  id                 = "n4361"
  resource_group_name = module.rgroup.name
  location           = "East US" 
  tags = {
    Project        = "Automation Project – Assignment 2"
    Name           = "yatin.phullera"
    ExpirationDate = "2023-06-30"
    Environment    = "Lab"
  }
}
module "vmlinux" {
  source             = "./vmlinux"
  id                 = "n4361"
  resource_group_name = module.rgroup.name
  location           = "East US" 
  subnet_id          = module.network.subnet_id
  storage_account_primary_blob_endpoint = module.common.storage_endpoint
  ssh_key                        = "C:\\Users\\User\\.ssh\\id_rsa.pub"
  ssh_private_key                = "C:\\Users\\User\\.ssh\\id_rsa"
  admin_username                 = "yatin"
  tags = {
    Project        = "Automation Project – Assignment 2"
    Name           = "yatin.phullera"
    ExpirationDate = "2023-06-30"
    Environment    = "Lab"
  }
}
module "vmwindows" {
  source             = "./vmwindows"
  id                = "n4361"
  resource_group_name = module.rgroup.name
  location           = "East US" 
  subnet_id          = module.network.subnet_id
  storage_account_primary_blob_endpoint = module.common.storage_endpoint
  tags = {
    Project        = "Automation Project – Assignment 2"
    Name           = "yatin.phullera"
    ExpirationDate = "2023-06-30"
    Environment    = "Lab"
  }
}
module "datadisk" {
  source             = "./datadisk"
  id                = "n4361"
  resource_group_name = module.rgroup.name
  location           = "East US" 
  virtualmachine_ids            = module.vmlinux.virtualmachine_ids
  
}
module "loadbalancer" {
  source             = "./loadbalancer"
  id                 = "n4361"
  resource_group_name = module.rgroup.name
  location           = "East US" 
  public_ip_address_ids = module.vmlinux.public_ip_address_ids
  linux_virtualmachine_nic_ids   = module.vmlinux.virtualmachine_nic_ids
  
}
module "database" {
  source             = "./database"
  id                = "n4361"
  resource_group_name = module.rgroup.name
  location           = "East US" 
}

