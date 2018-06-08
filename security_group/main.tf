resource "aws_security_group" "this" {
  name        = "${var.name}"
  description = "${var.description}"
  vpc_id      = "${var.vpc_id}"
}

resource "aws_security_group_rule" "this" {
  count = "${length(var.ingress_rules)}"

  security_group_id = "${aws_security_group.my_default_sg.id}"
  type              = "ingress"

  cidr_blocks = "${var.ingress_cidr_blocks}"

  from_port   = "${element(var.rules[var.ingress_rules[count.index]], 0)}"
  to_port     = "${element(var.rules[var.ingress_rules[count.index]], 1)}"
  protocol    = "${element(var.rules[var.ingress_rules[count.index]], 2)}"
  description = "${element(var.rules[var.ingress_rules[count.index]], 3)}"
}
