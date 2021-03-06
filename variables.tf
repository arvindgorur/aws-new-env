variable "default_region" {
  description = "Default region"
  default     = "ca-central-1"
}

variable "default_vpc_id" {
  description = "Default VPC ID"
  default     = "vpc-e2228f8a"
}

variable "default_instance_type" {
  description = "Default instance size"
  default     = "t2.micro"
}

variable "default_ami" {
  description = "Default instance AMI"
  default     = "ami-7e21a11a"
}

variable "default_vpc_security_group" {
  description = "Default VPC security group ID"
  default     = "sg-66b51d0d"
}
