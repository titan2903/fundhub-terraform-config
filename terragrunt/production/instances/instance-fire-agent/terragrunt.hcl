terraform {
  source = "../../../../modules/instances"
}

// find `terragrunt.hcl` for base configuration
include {
  path   = find_in_parent_folders()
}

// Jika value di input ini tidak di defined, maka akan mengambil value dari base configuration
inputs = {
    network_tags = ["allow-specific-port"]
    image = "ubuntu-os-cloud/ubuntu-2204-lts"
    machine_type = "e2-small"
    boot_disk_size_gb = 10  # Specify the size of the boot disk in gigabytes
    // static_ip_name = "static-ip-jenkins-agent-fire"
}