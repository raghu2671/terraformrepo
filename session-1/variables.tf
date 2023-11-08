variable "ami_id" {
    type = string
    default = "ami-03265a0778a880afb"  #this is the default value cut in ec2.tf and paste here
  
}
variable "instance_type" {
    type = string
    default = "t2.micro"
}
variable "sg_name" {
    default = "allow_all"
  
}
variable "sg_cidr" {
    type = list
    default = ["0.0.0.0/0"]
   
}
variable "tags" {
    type = map
    default = {
        Name = "MongoDB"
         Environment = "DEV"
         terraform = "true"
         Project = "Roboshop"
         component = "Mongodb"
    } 
}