
    resource "aws_key_pair" "deployer" {
      key_name = "deployer_pub"
      public_key = local.public_key 
    }
    resource "aws_instance" "file-function" {
        ami = local.ami_id 
        instance_type = local.instance_type    
        key_name = aws_key_pair.deployer.key_name
       
    }