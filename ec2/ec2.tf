resource "aws_instance" "doc" {
    ami = "ami-002a4813627fb6c96"
    instance_type = "t4g.micro"
}


resource "aws_security_group" "allow-alll" {
    name = "allow-alll"
    description = "allowing all inbound and outbound traffic"


#--> this called as block in terraform
    ingress {
        from_port               = 0
        to_port                 = 0
        protocol                = "-1"
        cidr_blocks             = ["0.0.0.0/0"]
    }


    egress {
        from_port               = 0
        to_port                 = 0
        protocol                = "-1"
        cidr_blocks             = ["0.0.0.0/0"]
    }

    tags = {
        name = "allow-alll"
        created_by = "jay"
        terraform = "true"

    }
}

