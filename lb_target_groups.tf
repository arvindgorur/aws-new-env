resource "aws_lb_target_group" "my_wx_app" {
  name     = "my-wx-app"
  port     = 3000
  protocol = "HTTP"
  vpc_id   = "${var.default_vpc_id}"
}

resource "aws_lb_target_group_attachment" "my_wx_app_target_1" {
  target_group_arn = "${aws_lb_target_group.my_wx_app.arn}"
  target_id        = "${module.docker_server_1.instance_id}"
  port             = 3000
}

resource "aws_lb_target_group_attachment" "my_wx_app_target_2" {
  target_group_arn = "${aws_lb_target_group.my_wx_app.arn}"
  target_id        = "${module.docker_server_2.instance_id}"
  port             = 3000
}
