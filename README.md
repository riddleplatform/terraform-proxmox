## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | 2.9.14 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | 2.9.14 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_vm_qemu.virtual_machine_cloud_init](https://registry.terraform.io/providers/Telmate/proxmox/2.9.14/docs/resources/vm_qemu) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_clone_ci"></a> [clone\_ci](#input\_clone\_ci) | Parameters for cloning a VM from cloud-init image | <pre>map(object({<br>    name              = string<br>    target_pve_node   = string<br>    clone             = string<br>    qemu_os           = optional(string)<br>    description       = optional(string)<br>    bios              = optional(string)<br>    onboot            = optional(bool)<br>    startup           = optional(string)<br>    oncreate          = optional(bool)<br>    tablet            = optional(bool)<br>    boot              = optional(string)<br>    bootdisk          = optional(string)<br>    scsihw            = optional(string)<br>    agent             = optional(number)<br>    memory            = optional(number)<br>    cpu_sockets       = optional(number)<br>    cpu_cores         = optional(number)<br>    cpu_type          = optional(string)<br>    ciuser            = optional(string)<br>    automatic_reboot  = optional(bool)<br>    ipconfig0         = optional(string)<br>    tags              = optional(string)<br>    disk_type         = optional(string)<br>    disk_storage_pool = optional(string)<br>    disk_size         = optional(string)<br>    disk_format       = optional(string)<br>    disk_cache        = optional(string)<br>    disk_backup       = optional(bool)<br>    disk_iothread     = optional(number)<br>    disk_replicate    = optional(number)<br>    disk_ssd          = optional(number)<br>    disk_discard      = optional(string)<br>    disk_mbps         = optional(number)<br>    disk_mbps_rd      = optional(number)<br>    disk_mbps_rd_max  = optional(number)<br>    disk_mbps_wr      = optional(number)<br>    disk_mbps_wr_max  = optional(number)<br>    disk_media        = optional(string)<br>    network_model     = optional(string)<br>    network_macaddr   = optional(string)<br>    network_bridge    = optional(string)<br>    network_tag       = optional(number)<br>    network_firewall  = optional(bool)<br>    network_rate      = optional(number)<br>    network_queues    = optional(number)<br>    network_link_down = optional(bool)<br>  }))</pre> | <pre>{<br>  "vm": {<br>    "agent": 0,<br>    "automatic_reboot": true,<br>    "bios": "seabios",<br>    "boot": null,<br>    "bootdisk": null,<br>    "ciuser": null,<br>    "clone": null,<br>    "cpu_cores": 1,<br>    "cpu_sockets": 1,<br>    "cpu_type": "host",<br>    "description": "",<br>    "disk_backup": true,<br>    "disk_cache": "none",<br>    "disk_discard": null,<br>    "disk_format": "raw",<br>    "disk_iothread": 0,<br>    "disk_mbps": 0,<br>    "disk_mbps_rd": 0,<br>    "disk_mbps_rd_max": 0,<br>    "disk_mbps_wr": 0,<br>    "disk_mbps_wr_max": 0,<br>    "disk_media": "disk",<br>    "disk_replicate": 0,<br>    "disk_size": null,<br>    "disk_ssd": 0,<br>    "disk_storage_pool": null,<br>    "disk_type": null,<br>    "ipconfig0": "ip=dhcp",<br>    "memory": 1024,<br>    "name": null,<br>    "network_bridge": "nat",<br>    "network_firewall": false,<br>    "network_link_down": false,<br>    "network_macaddr": null,<br>    "network_model": null,<br>    "network_queues": 1,<br>    "network_rate": 0,<br>    "network_tag": -1,<br>    "onboot": true,<br>    "oncreate": true,<br>    "qemu_os": "l26",<br>    "scsihw": null,<br>    "startup": "",<br>    "tablet": true,<br>    "tags": null,<br>    "target_pve_node": null<br>  }<br>}</pre> | no |
| <a name="input_sshkeys"></a> [sshkeys](#input\_sshkeys) | SSH public keys for cloud-init user | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloud_init"></a> [cloud\_init](#output\_cloud\_init) | Object containing each Cloud Init VM's details: name, agent, sockets, cores, memory, clone, ciuser, ipconfig0 |
