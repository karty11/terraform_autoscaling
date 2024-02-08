resource "aws_instance" "webservers" {
  count = length(var.subnets_cidr)
  ami           = "ami-0dac6b39723a16e20"
  instance_type = var.instance_type
  security_groups = [aws_security_group.webservers.id]
  subnet_id = element(aws_subnet.public.*.id, count.index)
  user_data = file("install_httpd.sh")

  tags = {
    Name="Servernew-${count.index}"
  }
}