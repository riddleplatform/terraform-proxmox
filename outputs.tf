output "cloud_init" {
  value = {
    for k, v in proxmox_vm_qemu.virtual_machine_cloud_init :
    k => ({
      name      = v.name,
      agent     = v.agent,
      sockets   = v.sockets,
      cores     = v.cores,
      memory    = v.memory,
      clone     = v.clone,
      ciuser    = v.ciuser,
      ipconfig0 = v.ipconfig0
    })
  }
  description = "Object containing each Cloud Init VM's details: name, agent, sockets, cores, memory, clone, ciuser, ipconfig0"
}
