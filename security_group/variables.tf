variable "name" {
  description = "The name of the security group"
}

variable "vpc_id" {
  description = "ID of the VPC where to create the security group"
}

variable "description" {
  description = "Description of the security group"
}

variable "ingress_rules" {
  description = "Ingress rules for this security group"
  default     = []
}

variable "ingress_cidr_blocks" {
  description = "CIDR blocks"
  default     = ["0.0.0.0/0"]
}
