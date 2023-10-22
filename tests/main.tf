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

module "test_vm_with_disk_networking" {
  source = "../"

  clone_ci = {
    vm = {
      name = "test"
      target_pve_node = "pve_test"
      clone = "test_clone"
      disk_type         = "scsi"
      disk_storage_pool = "local-lvm"
      disk_size         = "60G"
      network_model     = "virtio"
      network_bridge    = "vmbr0"
    }
  }
}

module "test_vm_with_disk" {
  source = "../"

  clone_ci = {
    vm = {
      name = "test"
      target_pve_node = "pve_test"
      clone = "test_clone"
      disk_type         = "scsi"
      disk_storage_pool = "local-lvm"
      disk_size         = "60G"
    }
  }
}

module "test_vm_with_networking" {
  source = "../"

  clone_ci = {
    vm = {
      name = "test"
      target_pve_node = "pve_test"
      clone = "test_clone"
      network_model     = "virtio"
      network_bridge    = "vmbr0"
    }
  }
}
