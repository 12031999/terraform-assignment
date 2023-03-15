locals {
  disks = length(var.virtualmachine_ids)
}

resource "azurerm_managed_disk" "datadisk" {
  count                = local.disks
  name                 = "${var.id}-data-disk-${count.index + 1}"
  location             = var.location
  resource_group_name  = var.resource_group_name
  storage_account_type = "Standard_LRS"
  create_option        = "Empty"
  disk_size_gb         = 10
}

resource "azurerm_virtual_machine_data_disk_attachment" "disk_attachment" {
  count             = local.disks
  virtual_machine_id = var.virtualmachine_ids[count.index]
  managed_disk_id    = azurerm_managed_disk.datadisk[count.index].id
  lun                = 1
  caching            = "None"
}

