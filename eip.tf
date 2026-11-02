resource "aws_eip" "nat" {
  domain = "vpc"
  tags = {
    Env = var.env
  }
}