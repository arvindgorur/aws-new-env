module "docker_server_1" {
  source            = "./instances"
  ami               = "${var.default_ami}"
  name              = "docker_server_1"
  key_name          = "CA-Central-Servers"
  availability_zone = "ca-central-1a"
  nic_id            = "${module.docker_1_nic.nic_id}"
}

module "docker_server_2" {
  source            = "./instances"
  ami               = "${var.default_ami}"
  name              = "docker_server_2"
  key_name          = "CA-Central-Servers"
  availability_zone = "ca-central-1a"
  nic_id            = "${module.docker_2_nic.nic_id}"
}
