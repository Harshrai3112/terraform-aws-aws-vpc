
resource "aws_route_table_association" "a" {
  count          = length(var.subnet_cidr) - 1
  subnet_id      = aws_subnet.lab1[count.index].id
  route_table_id = aws_route_table.myroute.id
}
