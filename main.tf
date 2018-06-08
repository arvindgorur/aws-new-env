provider "aws" {
  region = "${var.default_region}"
}

#module "docker_dev_server" {
#  source   = "./instances"
#  name     = "dockerdev_server"
#  key_name = "servers"
#}

module "my_default_sg" {
  source      = "./security_groups"
  name        = "my_default_sg"
  description = "Default custom security group"
  vpc_id      = "${var.default_vpc_id}"

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["https-443-tcp", "http-80-tcp", "ssh-22-tcp"]
}

module "network_interface" {
  source          = "./network_interfaces"
  security_groups = ["${module.my_default_sg.sec_group_id}", "sg-66b51d0d"]

  #private_ips     = "ansible-control-server"
  private_ips = ["172.31.16.10"]
  name        = "Test"
}

output "region" {
  value = "${var.default_region}"
}

#output "public_ip" {
#  value = "${module.docker_dev_server.public_ip}"
#}

output "sec_group_id" {
  value = "${module.my_default_sg.sec_group_id}"
}

output "nic_id" {
  value = "${module.network_interface.nic_id}"
}
