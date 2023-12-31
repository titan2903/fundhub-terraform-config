variable "project_id" {
  type        = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

variable "credentials" {
  type = string
}

variable "name" {
  type        = string
  description = "VM instance name"
}

variable "machine_type" {
  type = string
}

variable "network_tags" {
  type = list(any)
}

variable "image" {
  type = string
}

variable "network" {
  type = string
}

variable "sub_network" {
  type = string
}

variable "boot_disk_size_gb" {
  type = number
}

variable "static_ip_name" {
  type = string
}