resource "aws_instance" "dev" {
    ami="ami-06b21ccaeff8cd686"
    key_name = "test"
    instance_type = "t2.micro"
    tags={
        Name="sammple"
    }
    subnet_id = aws_subnet.dev.id
  
}