resource "aws_instance" "web" {
  ami                    = data.aws_ami.amiID.id  # Now this reference is valid
  instance_type          = "t3.micro"
  key_name               = "dove-key"
  vpc_security_group_ids = [aws_security_group.dove-sg.id]
  availability_zone      = var.zone

  tags = {
    Name    = "Dove-web"
    Project = "Dove"
  }
}
