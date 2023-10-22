terraform {
  required_providers {
    proxmox = {
      source  = "Telmate/proxmox"
      version = ">= 2.9.14"
    }
  }
  required_version = ">= 1.0"
}

provider "proxmox" {
  # Configuration options
  pm_api_url  = "https://proxmox.example.com:8006/api2/json"
  # It is strongly recommended to pass these securely
  # You can use environment variables instead:
  # export PM_USER="user@pve"
  # export PM_PASS="password"
  pm_user     = "user@pve"
  pm_password = "password"
}