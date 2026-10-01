data "aws_ami" "ami_id" {
    most_recent = true
    owners = ["125523088429"]
    filter {
        name = "name"
        values = ["CentOS Stream 9 aarch64 20260202"]
    }
    
    filter {
        name   = "root-device-type"
        values = ["ebs"]
    }
    filter {
        name   = "virtualization-type"
        values = ["hvm"]
    }
}

data "aws_vpc" "default" {
    default = true
}
    
