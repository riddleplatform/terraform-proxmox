variable "clone_ci" {
  description = "Parameters for cloning a VM from cloud-init image"
  type = map(object({
    name             = string
    target_pve_node  = string
    clone            = string
    qemu_os          = optional(string)
    description      = optional(string)
    bios             = optional(string)
    onboot           = optional(bool)
    startup          = optional(string)
    oncreate         = optional(bool)
    tablet           = optional(bool)
    boot             = optional(string)
    bootdisk         = optional(string)
    scsihw           = optional(string)
    agent            = optional(number)
    memory           = optional(number)
    cpu_sockets      = optional(number)
    cpu_cores        = optional(number)
    cpu_type         = optional(string)
    ciuser           = optional(string)
    automatic_reboot = optional(bool)
    ipconfig0        = optional(string)
    tags             = optional(string)
    disks = optional(map(object({
      disk_type         = optional(string)
      disk_storage_pool = optional(string)
      disk_size         = optional(string)
      disk_format       = optional(string)
      disk_cache        = optional(string)
      disk_backup       = optional(bool)
      disk_iothread     = optional(number)
      disk_replicate    = optional(number)
      disk_ssd          = optional(number)
      disk_discard      = optional(string)
      disk_mbps         = optional(number)
      disk_mbps_rd      = optional(number)
      disk_mbps_rd_max  = optional(number)
      disk_mbps_wr      = optional(number)
      disk_mbps_wr_max  = optional(number)
      disk_media        = optional(string)
    })))
    network_model     = optional(string)
    network_macaddr   = optional(string)
    network_bridge    = optional(string)
    network_tag       = optional(number)
    network_firewall  = optional(bool)
    network_rate      = optional(number)
    network_queues    = optional(number)
    network_link_down = optional(bool)
  }))
  default = {
    vm = {
      name              = null
      target_pve_node   = null
      clone             = null
      qemu_os           = "l26"
      description       = ""
      bios              = "seabios"
      onboot            = true
      startup           = ""
      oncreate          = true
      tablet            = true
      boot              = null
      bootdisk          = null
      scsihw            = null
      agent             = 0
      memory            = 1024
      cpu_sockets       = 1
      cpu_cores         = 1
      cpu_type          = "host"
      ciuser            = null
      automatic_reboot  = true
      ipconfig0         = "ip=dhcp"
      tags              = null
      disks             = {}
      network_model     = null
      network_macaddr   = null
      network_bridge    = "nat"
      network_tag       = -1
      network_firewall  = false
      network_rate      = 0
      network_queues    = 1
      network_link_down = false
    }
  }
}

variable "sshkeys" {
  description = "SSH public keys for cloud-init user"
  type        = string
  default     = null
  sensitive   = true
}
