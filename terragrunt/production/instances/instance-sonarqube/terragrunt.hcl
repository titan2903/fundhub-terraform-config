terraform {
  source = "../../../../modules/instances"
}

include {
  path   = find_in_parent_folders()
}

inputs = {
    network_tags = ["allow-specific-port"]
    image        = "ubuntu-os-cloud/ubuntu-2004-lts"
    machine_type = "e2-medium"
    boot_disk_size_gb = 50
    static_ip_name = "static-ip-sonarqube"
}
