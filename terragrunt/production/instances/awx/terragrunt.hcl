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
    image        = "ubuntu-os-cloud/ubuntu-2004-lts"
    machine_type = "e2-medium"
    size = 50  # Specify the size of the boot disk in gigabytes
    static_ip_name = "static-ip-awx"
}
