variable "project_id" {
  type        = string
  description = "project id"
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

variable "boot_disk_size_gb" {
  type = number
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

variable "prefix" {
  type = string
}

variable "static_ip_name" {
  type = string
}

variable "interface_scratch_disk" {
  type = string
}