terraform {
  source = "../../../../modules/instances"
}

// find `terragrunt.hcl` for base configuration
include {
  path   = find_in_parent_folders()
}

inputs = {
    network_tags = ["allow-specific-port"]
    image = "ubuntu-os-cloud/ubuntu-2204-lts"
    machine_type = "e2-micro"
    boot_disk_size_gb = 50  # Specify the size of the boot disk in gigabytes
    static_ip_name = "static-ip-mariadb"
}