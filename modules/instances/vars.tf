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
