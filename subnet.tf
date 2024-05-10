resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = var.public_subnet_cidr
  availability_zone = "us-east-1a"
  tags = {
    Name = "terraform subnet"
  }

}