locals {
  cloud_init_vms = {
    for k, v in var.clone_ci : k => {
      name             = lookup(v, "name", null)
      target_pve_node  = lookup(v, "target_pve_node", null)
      clone            = lookup(v, "clone", null)
      qemu_os          = lookup(v, "qemu_os", "l26")
      description      = lookup(v, "description", "Terraform Managed")
      bios             = lookup(v, "bios", "seabios")
      onboot           = lookup(v, "onboot", true)
      startup          = lookup(v, "startup", "")
      oncreate         = lookup(v, "oncreate", true)
      tablet           = lookup(v, "tablet", true)
      boot             = lookup(v, "boot", null)
      bootdisk         = lookup(v, "bootdisk", null)
      scsihw           = lookup(v, "scsihw", "lsi")
      agent            = lookup(v, "agent", 0)
      memory           = lookup(v, "memory", 1024)
      cpu_sockets      = lookup(v, "cpu_sockets", 1)
      cpu_cores        = lookup(v, "cpu_cores", 1)
      cpu_type         = lookup(v, "cpu_type", "host")
      ciuser           = lookup(v, "ciuser", null)
      sshkeys          = lookup(v, "sshkeys", null)
      automatic_reboot = lookup(v, "automatic_reboot", true)
      ipconfig0        = lookup(v, "ipconfig0", null)
      tags             = lookup(v, "tags", null)

      disks = {
        for k, v in lookup(v, "disks", {}) : k => {
          disk_type         = lookup(v, "disk_type", null)
          disk_storage_pool = lookup(v, "disk_storage_pool", null)
          disk_size         = lookup(v, "disk_size", null)
          disk_format       = lookup(v, "disk_format", "raw")
          disk_cache        = lookup(v, "disk_cache", "none")
          disk_backup       = lookup(v, "disk_backup", true)
          disk_iothread     = lookup(v, "disk_iothread", 0)
          disk_replicate    = lookup(v, "disk_replicate", 0)
          disk_ssd          = lookup(v, "disk_ssd", 0)
          disk_discard      = lookup(v, "disk_discard", null)
          disk_mbps         = lookup(v, "disk_mbps", 0)
          disk_mbps_rd      = lookup(v, "disk_mbps_rd", 0)
          disk_mbps_rd_max  = lookup(v, "disk_mbps_rd_max", 0)
          disk_mbps_wr      = lookup(v, "disk_mbps_wr", 0)
          disk_mbps_wr_max  = lookup(v, "disk_mbps_wr_max", 0)
          disk_media        = lookup(v, "disk_media", "disk")
        } if v.disk_type != null && v.disk_storage_pool != null && v.disk_size != null
      }

      network_model     = lookup(v, "network_model", null)
      network_macaddr   = lookup(v, "network_macaddr", null)
      network_bridge    = lookup(v, "network_bridge", "nat")
      network_tag       = lookup(v, "network_tag", -1)
      network_firewall  = lookup(v, "network_firewall", false)
      network_rate      = lookup(v, "network_rate", 0)
      network_queues    = lookup(v, "network_queues", 1)
      network_link_down = lookup(v, "network_link_down", false)

    } if v.name != null && v.target_pve_node != null && v.clone != null
  }
}
