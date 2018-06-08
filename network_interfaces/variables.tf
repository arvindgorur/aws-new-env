variable "subnet_id" {
  description = "The VPC subnet to place this in"
  default     = "subnet-5630963e"
}

variable "security_groups" {
  description = "The security groups to assign to this interface"
  default     = []
}

variable "private_ips" {
  description = "IP addresses to assign to thihs interface"
  default     = []
}

variable "name" {
  description = "Name for this interface"
  default     = "NIC"
}
