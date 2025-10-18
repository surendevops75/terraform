resource "aws_instance" "terraform" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_all-1.id]
  tags = var.ec2_tags
}

resource "aws_security_group" "allow_all-1" {
  name   = var.sg_name

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

  tags = {
    Name = "allow-all-1"
  }

}