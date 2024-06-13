terraform {
  required_providers {
    linode = {
      source = "linode/linode"
    }
  }
}

provider "linode" {
  token       = var.token
  api_version = "v4beta"
}

# linode
resource "linode_instance" "terraform-v2ray" {
  image     = "linode/ubuntu18.04"
  label     = "v2ray"
  region    = var.region
  type      = "g6-standard-1"
  root_pass = var.root_pass

  provisioner "file" {
    source = "setup_script.sh"
    destination = "/tmp/setup_script.sh"
    connection {
      type = "ssh"
      host = self.ip_address
      user = "root"
      password = var.root_pass
    }
  }

  provisioner "remote-exec" {
    inline = [ 
        "chmod +x /tmp/setup_script.sh",
        "/tmp/setup_script.sh",
        "sleep 1"
    ]
    connection {
      type = "ssh"
      host = self.ip_address
      user = "root"
      password = var.root_pass
    }
  }
}

# variables
variable "token" {}
variable "root_pass" {}
variable "region" {}