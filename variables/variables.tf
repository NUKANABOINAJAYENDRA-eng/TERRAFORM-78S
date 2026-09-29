variable "image_id" {
    type = string
    default = "ami-002a4813627fb6c96"
    description = "practicing terraform"
}

variable "instance_type" {
    type = string
    default = "t4g.micro"
    
}

variable "tags" {
    default = {
        Name = "jay"
        Course = "Devops"
        Trainner = "Siva"
        Terraform = "true"
    }

}



variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
}


variable "ssh_port" {
    default = 0
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}