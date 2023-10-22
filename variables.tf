variable "clone_ci" {
    description = "Parameters for cloning a VM from cloud-init image"
    type = map(object({
        name = string
        target_pve_node = string
        clone = string
        qemu_os = optional(string)
        description = optional(string)
        bios = optional(string)
        onboot = optional(bool)
        startup = optional(string)
        oncreate = optional(bool)
        tablet = optional(bool)
        boot = optional(string)
        bootdisk = optional(string)
        agent = optional(number)
        memory = optional(number)
        cpu_sockets = optional(number)
        cpu_cores = optional(number)
        cpu_type = optional(string)
        ciuser = optional(string)
        automatic_reboot = optional(bool)
        ipconfig0 = optional(string)
        tags = optional(string)
        disk_type = optional(string)
        disk_storage_pool = optional(string)
        disk_size = optional(string)
        disk_format = optional(string)
        disk_cache = optional(string)
        disk_backup = optional(bool)
        disk_iothread = optional(number)
        disk_replicate = optional(number)
        disk_ssd = optional(number)
        disk_discard = optional(string)
        disk_mbps = optional(number)
        disk_mbps_rd = optional(number)
        disk_mbps_rd_max = optional(number)
        disk_mbps_wr = optional(number)
        disk_mbps_wr_max = optional(number)
        disk_media = optional(string)
        network_model = optional(string)
        network_macaddr = optional(string)
        network_bridge = optional(string)
        network_tag = optional(number)
        network_firewall = optional(bool)
        network_rate = optional(number)
        network_queues = optional(number)
        network_link_down = optional(bool)
    }))
    default = {
        vm = {
            name              = null
            target_pve_node   = null
            clone = null
            qemu_os           = "l26"
            description       = ""
            bios              = "seabios"
            onboot            = true
            startup           = ""
            oncreate          = true
            tablet            = true
            boot              = null
            bootdisk          = null
            agent             = 0
            memory            = 1024
            cpu_sockets       = 1
            cpu_cores         = 1
            cpu_type          = "host"
            ciuser            = null
            automatic_reboot  = true
            ipconfig0         = "ip=dhcp"
            tags              = null
            disk_type         = null
            disk_storage_pool = null
            disk_size         = null
            disk_format       = "raw"
            disk_cache        = "none"
            disk_backup       = true
            disk_iothread     = 0
            disk_replicate    = 0
            disk_ssd          = 0
            disk_discard      = null
            disk_mbps         = 0
            disk_mbps_rd      = 0
            disk_mbps_rd_max  = 0
            disk_mbps_wr      = 0
            disk_mbps_wr_max  = 0
            disk_media        = "disk"
            network_model = null
            network_macaddr = null
            network_bridge = "nat"
            network_tag = -1
            network_firewall = false
            network_rate = 0
            network_queues = 1
            network_link_down = false
        }
    }
}

variable "sshkeys" {
    description = "SSH public keys for cloud-init user"
    type = string
    default = null
    sensitive = true
}

#variable "proxmox_api_url" {
#    description = "Proxmox API URL"
#    type = string
#}

# https://pve.proxmox.com/wiki/Qemu/KVM_Virtual_Machines
#ostype: <l24 | l26 | other | solaris | w2k | w2k3 | w2k8 | win10 | win11 | win7 | win8 | wvista | wxp>
#Specify guest operating system. This is used to enable special optimization/features for specific operating systems:
#other
#unspecified OS
#wxp
#Microsoft Windows XP
#w2k
#Microsoft Windows 2000
#w2k3
#Microsoft Windows 2003
#w2k8
#Microsoft Windows 2008
#wvista
#Microsoft Windows Vista
#win7
#Microsoft Windows 7
#win8
#Microsoft Windows 8/2012/2012r2
#win10
#Microsoft Windows 10/2016/2019
#win11
#Microsoft Windows 11/2022
#l24
#Linux 2.4 Kernel
#l26
#Linux 2.6 - 6.X Kernel
#solaris
#Solaris/OpenSolaris/OpenIndiania kernel
