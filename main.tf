provider "aws" {
  region = "${var.default_region}"
}

############
# OUTPUTS
############
output "region" {
  value = "${var.default_region}"
}

output "docker_1_public_ip" {
  value = "${module.docker_server_1.public_ip}"
}

output "docker_2_public_ip" {
  value = "${module.docker_server_2.public_ip}"
}

output "sec_group_id" {
  value = "${module.my_default_sg.sec_group_id}"
}

output "docker_1_nic_id" {
  value = "${module.docker_1_nic.nic_id}"
}

output "docker_2_nic_id" {
  value = "${module.docker_2_nic.nic_id}"
}

#DynamoDB outputs
output "table_arn" {
  value = "${module.my_dynamodb_table.table_arn}"
}

output "table_id" {
  value = "${module.my_dynamodb_table.table_id}"
}

output "vpc_id" {
  value = "${module.new_vpc.vpc_id}"
}

output "table_hash_key" {
  value = "${module.my_dynamodb_table.hash_key}"
}
