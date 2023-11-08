variable "ami_id" {
    type = string
    default = "ami-03265a0778a880afb"  #this is the default value cut in ec2.tf and paste here
}

variable "instance_names" {
    type = list
    default = ["MongoDb","Cart","Catalogue","User","Redis","Mysql","RabbitMq","Shopping","Payment","Web"]
  
}