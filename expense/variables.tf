variable "instance_names" {
    type = list
    default = ["db","frontend","backend"]
}
variable "image_id" {
    type = string
    default = "ami-002a4813627fb6c96"
    description = "practicing terraform"
}

variable "instance_type" {
    type = string
    default = "t4g.micro"
    
}
#-->tags

variable "common_tags" {
    default = {
        project = "Expence"
        ENV = "DEV"
        Terraform = "true"
    }

}


#-->sg_variables

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


/*
#--> r53 variables 
variable "zone_id" {
    default = "zone_id"
}

variable "domain_name" {
    default = "domain_name"
}
*/