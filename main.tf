provider "aws" {
  region = "${var.default_region}"
}

module "docker_dev_server" {
  source   = "./instances"
  name     = "dockerdev_server"
  key_name = "servers"
}

output "region" {
  value = "${var.default_region}"
}

output "public_ip" {
  value = "${module.docker_dev_server.public_ip}"
}
