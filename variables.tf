variable "default_region" {
  description = "Default region"
  default     = "us-east-1"
}

variable "default_instance_type" {
  description = "Default instance size"
  default     = "t2.micro"
}

variable "default_vpc_security_group" {
  description = "Default VPC security group ID"
  default     = "sg-9e51dbe9"
}

variable "default_security_group" {
  description = "Default custom security group ID"
  default     = "sg-60b40a29"
}
