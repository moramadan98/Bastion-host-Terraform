resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic"
  vpc_id      = module.Network.vpc_id

  ingress {
    description = "ssh from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}










resource "aws_security_group" "allow_ssh_3000" {
  name        = "allow_ssh_3000"
  description = "allow ssh 3000 inbound traffic"
  vpc_id      = module.Network.vpc_id

  ingress {
    description = "allow ssh from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [module.Network.vpc_cidr]
  }


  ingress {
    description = "allow 3000 from VPC"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [module.Network.vpc_cidr]
  }



  tags = {
    Name = "allow_ssh_3000"
  }
}