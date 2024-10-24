variable "ami_id" {
    type=string
    default = "ami-06b21ccaeff8cd686"
  
}
variable "instance_type_id" {
    type = string
    default = "t2.micro"
  
}
variable "key_name_id" {
  type = string
  default = "test"
}