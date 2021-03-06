variable "vpc_id" {
  description = "The ID of VPC to create the subnet in"
}

variable "cidr_block" {
  description = "CIDR block for this subnet"
}

variable "availability_zone" {
  description = "AZ for this subnet"
}

variable "subnet_name" {
  description = "Name to tag this subnet"
}

variable "assign_public_ip" {
  description = "A boolean value to indicate whether instances in this subnet will be assigned a public IP"
  default     = false
}
