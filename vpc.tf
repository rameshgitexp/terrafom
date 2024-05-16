resource "aws_vpc" "main" {
  cidr_block       = var.vpc_id
  instance_tenancy = "default" 

  tags = {
    Name = "tca"
  }
}

resource "aws_subnet" "main" {
  count             = 3
  availability_zone = var.azs[count.index]
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_ciders[count.index]

  tags = {
    Name = "tca-${count.index + 1}"
  }
}