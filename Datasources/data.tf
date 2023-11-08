data "aws_ami" "name_ami_id" {
  most_recent = true
  owners = [ "amazon" ]
  
}
output "ami_id" {
  value= data.aws_ami.name_ami_id.id
}

data "aws_vpc" "default" {
  default = true
}

output "default_vpc_id" {
  value = data.aws_vpc.default.id
}


resource "aws_security_group" "allow-http-sg" {
    name = "allowTcpSG"
    vpc_id = data.aws_vpc.default.id
    description = "allowing all http    ports" # you can keep in variable
  
    ingress {
        description      = "allowing port 80"
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]

    }
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1" #all protocols
        cidr_blocks      = ["0.0.0.0/0"]

    }
}