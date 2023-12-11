resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.pub-sub-1.id
  route_table_id = aws_route_table.rt.id
}


resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.pub-sub-2.id
  route_table_id = aws_route_table.rt.id
}