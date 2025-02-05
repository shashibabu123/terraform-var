resource "aws_key_pair" "dove-key" {
  key_name   = "dove-key"
  public_key = "<generate your ssh-public-key and paste it>"
}
