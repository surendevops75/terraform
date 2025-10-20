resource "aws_instance" "terraform" {
  ami           = local.ami_id
  instance_type = local.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all-1.id]
  tags = local.ec2_tags
}

resource "aws_security_group" "allow_all-1" {
  name   ="${local.common_name}-allow-all-1"


  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = var.cidr
  }

  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port 
    protocol         = "-1" # -1 means all protocols
    cidr_blocks      = var.cidr
  }

  tags = merge(
      var.common_tags,
      {
        Name = "${local.common_name}-allow-all"
      }
    )
}