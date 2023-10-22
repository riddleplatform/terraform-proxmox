terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = "2.9.14"
    }
  }
}

provider "proxmox" {
  # Configuration options
}

module "test_vm" {
  source = "../"

  clone_ci = {
    vm = {
      name            = "test"
      target_pve_node = "pve_test"
      clone           = "test_clone"
    }
  }
}
