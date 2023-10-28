resource "proxmox_vm_qemu" "virtual_machine_cloud_init" {
  for_each = local.cloud_init_vms

  name             = each.value.name
  target_node      = each.value.target_pve_node
  os_type          = "cloud-init"
  clone            = each.value.clone
  qemu_os          = each.value.qemu_os
  desc             = each.value.description
  bios             = each.value.bios
  onboot           = each.value.onboot
  startup          = each.value.startup
  oncreate         = each.value.oncreate
  tablet           = each.value.tablet
  boot             = each.value.boot
  bootdisk         = each.value.bootdisk
  agent            = each.value.agent
  memory           = each.value.memory
  sockets          = each.value.cpu_sockets
  cores            = each.value.cpu_cores
  cpu              = each.value.cpu_type
  ciuser           = each.value.ciuser
  sshkeys          = var.sshkeys
  automatic_reboot = each.value.automatic_reboot
  ipconfig0        = each.value.ipconfig0

  dynamic "disk" {
    for_each = each.value.disks

    content {
      type        = disk.value.disk_type
      storage     = disk.value.disk_storage_pool
      size        = disk.value.disk_size
      format      = disk.value.disk_format
      cache       = disk.value.disk_cache
      backup      = disk.value.disk_backup
      iothread    = disk.value.disk_iothread
      replicate   = disk.value.disk_replicate
      ssd         = disk.value.disk_ssd
      discard     = disk.value.disk_discard
      mbps        = disk.value.disk_mbps
      mbps_rd     = disk.value.disk_mbps_rd
      mbps_rd_max = disk.value.disk_mbps_rd_max
      mbps_wr     = disk.value.disk_mbps_wr
      mbps_wr_max = disk.value.disk_mbps_wr_max
      media       = disk.value.disk_media
    }
  }

  dynamic "network" {
    for_each = contains(keys(each.value), "network_model") && each.value.network_model != null ? [1] : []

    content {
      model     = each.value.network_model
      macaddr   = each.value.network_macaddr
      bridge    = each.value.network_bridge
      tag       = each.value.network_tag
      firewall  = each.value.network_firewall
      rate      = each.value.network_rate
      queues    = each.value.network_queues
      link_down = each.value.network_link_down
    }
  }
  tags = each.value.tags
}
