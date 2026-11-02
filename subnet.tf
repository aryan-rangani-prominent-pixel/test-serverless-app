resource "aws_subnet" "public" {
    for_each.public_subnets
    vpc_id = aws_vpc.main.id
    cidr_block = each.value.cidr
    availability_zone = each.value.az
    tags = {
        Env = var.env
    }
}