module "docker_1_nic" {
  source          = "./network_interfaces"
  security_groups = ["${module.my_default_sg.sec_group_id}", "sg-66b51d0d"]
  private_ips     = ["172.31.16.10"]
  name            = "docker_server_1"
}

module "docker_2_nic" {
  source          = "./network_interfaces"
  security_groups = ["${module.my_default_sg.sec_group_id}", "sg-66b51d0d"]
  private_ips     = ["172.31.16.11"]
  name            = "docker_server_2"
}
