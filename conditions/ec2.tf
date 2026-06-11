resource "aws_security_group" "allow_all" {
  name        = "allow-all"
  description = "Allow all inbound and outbound traffic"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-all"
  }
}

resource "aws_instance" "terraform" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = var.environment=="dev" ? "t3.micro" : "t3.medium"

  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = {
    Name      = "HelloWorld"
    Terraform = "true"
  }
}
