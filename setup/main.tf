provider "aws" {
    region      = "us-east-1"
}

resource "aws_vpc" "main_vpc" {
    cidr_block          = "10.0.0.0/16"
}

module "global_webserver" {
    source          = "../modules/webserver"
    vpc_id          = aws_vpc.main_vpc.id
    cidr_block      = "10.0.0.0/16"
    webserver_name  = "global"
    ami             = "ami-053b0d53c279acc90"
    instance_type   = "t2.micro"
}

output "instance_data" {
    value         = module.global_webserver.instance 
}