variable "vpc_id" {
    type            = string
    description     = "vpc Id"  
}

variable "cidr_block" {
    type            = string
    description     = "subnet cidr block"
}

variable "webserver_name" {
    type        = string
    description = "Name of the webserver"
}

variable "ami" {
    type            = string
    description     = "AMI to use on the webserver instance"
    default         = "ami-053b0d53c279acc90"
}

variable "instance_type" {
    type            = string
    description     = "Instancy Type"
    default         = "t2.micro"
}

variable "subnet_id" {
    type            = string
    description     = "Subnet Id"
    default         = "10.0.1.0/24"
}