resource "aws_subnet" "lab1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = element(var.subnet_cidr,count.index)
  count             = length(var.subnet_cidr)
  availability_zone = var.az[count.index]
  tags = {
    Name = "lab-${count.index}"
  }
}
