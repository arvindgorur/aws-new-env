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

output "region" {
  value = "${var.default_region}"
}

#output "public_ip" {
#  value = "${module.docker_dev_server.public_ip}"
#}


#output "rules_count" {
#  value = "${module.my_default_sg.rules_count}"
#}

