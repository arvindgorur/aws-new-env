variable "name" {
  description = "The name of the EC2 instance"
}

variable "key_name" {
  description = "The Name of the SSH key pair to use to connect to this EC2 instance"
}

variable "availability_zone" {
  description = "The name of the AZ to place this VM in"
}

variable "nic_id" {
  description = "The NIC id to attach to this VM"
}

variable "ami" {
  description = "The AMI to use when creating this image"
}
