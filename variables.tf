variable "name" {
  description = "Subnet name"
}

variable "vpc" {
  description = "VPC to link the subnet to"
}

variable "subnet-region" {
  default     = ""
  description = "Zone associated with the subnet. Defaults to the region configured in the provider."
}

variable "ip_cidr_range" {
  description = "IP range - format 0.0.0.0/0"
}
