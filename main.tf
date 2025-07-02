provider "aws" {
region = "us-east-2"
}

resource "aws_instance" "one" {
count = 0
ami = "ami-05df0ea761147eda6"
instance_type = "t2.medium"
key_name = "balajib"
vpc_security_group_ids = ["sg-0329ce25cafddb8d1"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "nexus", "Monitoring server"]
}
