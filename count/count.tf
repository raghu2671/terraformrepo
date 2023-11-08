    resource "aws_instance" "conditions" {
        count = 10
        ami = var.ami_id                #devops-practice in us-east-1
        
        instance_type =var.instance_names[count.index] == "MongoDb" || var.instance_names[count.index] == "Mysql" ? "t3.medium" : "t2.micro"
       
        tags = {
          Name = var.instance_names[count.index]
        }

    }
    resource "aws_key_pair" "deployer" {
      key_name = "deployer_pub"
      public_key = file("${path.module}/devops.pub")
    }
    resource "aws_instance" "file-function" {
        ami = var.ami_id          
        instance_type = "t2.micro"
        key_name = aws_key_pair.deployer.key_name
    }