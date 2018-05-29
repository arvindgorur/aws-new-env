provider "aws" {
  region = "${var.default_region}"
}

module "dev_server" {
  source   = "./instances"
  name     = "dev_server"
  key_name = "servers"
}

output "region" {
  value = "${var.default_region}"
}
