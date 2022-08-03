resource "aws_security_group" "security-group" {
  name = var.security
  description = "controls access to the instance"
  tags = {
    Name = "SG-Webserver"    
 }
}


resource "aws_security_group_rule" "instance_rdp" {
  security_group_id = aws_security_group.security-group.id
  type              = "ingress"
  from_port         = 3389
  to_port           = 3389
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]

}

resource "aws_security_group_rule" "instance_ansible" {
  security_group_id = aws_security_group.security-group.id
  type              = "ingress"
  from_port         = 5986
  to_port           = 5986
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]

}

resource "aws_security_group_rule" "instance_webserver" {
  security_group_id = aws_security_group.security-group.id
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]

}

resource "aws_security_group_rule" "instance_egress" {
  security_group_id = aws_security_group.security-group.id
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}


