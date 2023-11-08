resource "aws_instance" "test" {
    ami = var.ami_id
    instance_type = "t2.micro"
  
}