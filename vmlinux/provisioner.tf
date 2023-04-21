resource "null_resource" "display_hostnames" {
  count      = var.vm_count
  depends_on = [azurerm_virtual_machine.vm]

  provisioner "remote-exec" {
    inline = [
      "hostname"
    ]
    connection {
      host        = azurerm_public_ip.pip[count.index+1].ip_address
      type        = "ssh"
      user        = var.admin_username
      private_key = file(var.ssh_private_key)
    }
  }

  provisioner "remote-exec" {
    inline = [
      "ssh-keyscan ${azurerm_public_ip.pip[count.index+1].ip_address} >> ~/.ssh/known_hosts",
      "ansible-playbook -i '${azurerm_public_ip.pip[count.index+1].ip_address},' -u ${var.admin_username} --private-key=${var.ssh_private_key} /home/ubuntu/automation/ansible/groupX-playbook.yaml"
    ]
    connection {
      host        = "52.6.130.81"
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("C:\\Users\\User\\Downloads\\newkey.pem")
    }
  }
}

