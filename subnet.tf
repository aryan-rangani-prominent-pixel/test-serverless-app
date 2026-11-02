resource "aws_subnet" "public" {
  for_each          = var.public_subnets
  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value.cidr
  availability_zone = each.value.az
  tags = {
    Env = var.env
  }
}

resource "aws_subnet" "private" {
   for_each = var.private_subnets
   vpc_id = aws_vpc.main.id
   cidr_block = each.value.cidr
   availability_zone = each.value.az
   tags = {
    ENv = var.env
   }
}