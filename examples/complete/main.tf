module "cloud_init_vm" {
  source = "../../"

  clone_ci = {
    vm_no_disk_no_network = {
      name             = "vm1"
      target_pve_node  = "pve"
      clone            = "ubuntu-ci"
      qemu_os          = "l26"
      description      = "VM cloned from Ubuntu cloud-init template"
      bios             = "seabios"
      onboot           = true
      startup          = "Start/Shutdown order: any"
      oncreate         = true
      tablet           = true
      boot             = "order=scsi0;net0"
      scsihw           = "lsi"
      agent            = 0
      memory           = 1024
      cpu_sockets      = 1
      cpu_cores        = 1
      cpu_type         = "host"
      ciuser           = "root"
      automatic_reboot = true
      ipconfig0        = "ip=dhcp"
      tags             = "ubuntu-vm"
    }
    vm_no_disk = {
      name              = "vm2"
      target_pve_node   = "pve"
      clone             = "ubuntu-ci"
      qemu_os           = "l26"
      description       = "VM cloned from Ubuntu cloud-init template"
      bios              = "seabios"
      onboot            = true
      startup           = "Start/Shutdown order: any"
      oncreate          = true
      tablet            = true
      boot              = "order=scsi0;net0"
      scsihw            = "lsi"
      agent             = 0
      memory            = 1024
      cpu_sockets       = 1
      cpu_cores         = 1
      cpu_type          = "host"
      ciuser            = "root"
      automatic_reboot  = true
      ipconfig0         = "ip=dhcp"
      tags              = "ubuntu-vm"
      network_model     = "virtio"
      network_macaddr   = "aa:bb:cc:dd:ee:ff"
      network_bridge    = "vmbr0"
      network_tag       = -1
      network_firewall  = false
      network_rate      = 0
      network_queues    = 1
      network_link_down = false
    }
    vm_no_network = {
      name             = "vm3"
      target_pve_node  = "pve"
      clone            = "ubuntu-ci"
      qemu_os          = "l26"
      description      = "VM cloned from Ubuntu cloud-init template"
      bios             = "seabios"
      onboot           = true
      startup          = "Start/Shutdown order: any"
      oncreate         = true
      tablet           = true
      boot             = "order=scsi0;net0"
      scsihw           = "lsi"
      agent            = 0
      memory           = 1024
      cpu_sockets      = 1
      cpu_cores        = 1
      cpu_type         = "host"
      ciuser           = "root"
      automatic_reboot = true
      ipconfig0        = "ip=dhcp"
      tags             = "ubuntu-vm"
      disks = {
        boot = {
          disk_type         = "scsi"
          disk_storage_pool = "local-lvm"
          disk_size         = "60G"
        }
        storage = {
          boot = {
            disk_type         = "scsi"
            disk_storage_pool = "local-lvm"
            disk_size         = "100G"
            disk_format       = "raw"
            disk_cache        = "none"
            disk_backup       = true
            disk_iothread     = 0
            disk_replicate    = 0
            disk_ssd          = 0
            disk_mbps         = 0
            disk_mbps_rd      = 0
            disk_mbps_rd_max  = 0
            disk_mbps_wr      = 0
            disk_mbps_wr_max  = 0
            disk_media        = "disk"
          }
        }
      }
    }
    vm_with_disk_with_network = {
      name             = "vm4"
      target_pve_node  = "pve"
      clone            = "ubuntu-ci"
      qemu_os          = "l26"
      description      = "VM cloned from Ubuntu cloud-init template"
      bios             = "seabios"
      onboot           = true
      startup          = "Start/Shutdown order: any"
      oncreate         = true
      tablet           = true
      boot             = "order=scsi0;net0"
      scsihw           = "lsi"
      agent            = 0
      memory           = 1024
      cpu_sockets      = 1
      cpu_cores        = 1
      cpu_type         = "host"
      ciuser           = "root"
      automatic_reboot = true
      ipconfig0        = "ip=dhcp"
      tags             = "ubuntu-vm"
      disks = {
        boot = {
          disk_type         = "scsi"
          disk_storage_pool = "local-lvm"
          disk_size         = "60G"
        }
        storage = {
          boot = {
            disk_type         = "scsi"
            disk_storage_pool = "local-lvm"
            disk_size         = "100G"
            disk_format       = "raw"
            disk_cache        = "none"
            disk_backup       = true
            disk_iothread     = 0
            disk_replicate    = 0
            disk_ssd          = 0
            disk_mbps         = 0
            disk_mbps_rd      = 0
            disk_mbps_rd_max  = 0
            disk_mbps_wr      = 0
            disk_mbps_wr_max  = 0
            disk_media        = "disk"
          }
        }
      }
      network_model     = "virtio"
      network_macaddr   = "aa:bb:cc:dd:ee:ff"
      network_bridge    = "vmbr0"
      network_tag       = -1
      network_firewall  = false
      network_rate      = 0
      network_queues    = 1
      network_link_down = false
    }
  }
}
