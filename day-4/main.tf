resource "aws_instance" "dev" {
    ami=var.ami_id
  key_name = var.key_name_id
  instance_type = var.instance_type_id
  tags={
    Name="sam"
  }
  
}