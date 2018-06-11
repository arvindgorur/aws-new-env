provider "aws" {
  region = "${var.default_region}"
}

module "docker_dev_server" {
  source            = "./instances"
  ami               = "${var.default_ami}"
  name              = "docker_dev_server"
  key_name          = "CA-Central-Servers"
  availability_zone = "ca-central-1a"
  nic_id            = "${module.docker_nic.nic_id}"
}

module "my_default_sg" {
  source              = "./security_groups"
  name                = "my_default_sg"
  description         = "Default custom security group"
  vpc_id              = "${var.default_vpc_id}"
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["https-443-tcp", "http-80-tcp", "ssh-22-tcp"]
}

module "docker_nic" {
  source          = "./network_interfaces"
  security_groups = ["${module.my_default_sg.sec_group_id}", "sg-66b51d0d"]
  private_ips     = ["172.31.16.10"]
  name            = "docker_dev_server"
}

module "my_dynamodb_table" {
  source         = "./dynamodb"
  table_name     = "test_table"
  read_capacity  = 1
  write_capacity = 1
}

output "region" {
  value = "${var.default_region}"
}

output "public_ip" {
  value = "${module.docker_dev_server.public_ip}"
}

output "sec_group_id" {
  value = "${module.my_default_sg.sec_group_id}"
}

output "nic_id" {
  value = "${module.docker_nic.nic_id}"
}

#DynamoDB outputs
output "table_arn" {
  value = "${module.my_dynamodb_table.table_arn}"
}

output "table_id" {
  value = "${module.my_dynamodb_table.table_id}"
}

output "table_hash_key" {
  value = "${module.my_dynamodb_table.hash_key}"
}
