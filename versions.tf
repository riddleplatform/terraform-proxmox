terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "2.9.14"
    }
  }
}

#provider "proxmox" {
#  # Configuration options
#  pm_api_url = var.proxmox_api_url
#}
