variable "instance_names" {
    type = map
    default = {

        #--> left is know as key & right is know as value

        db = "t4g.small"
        backend = "t4g.micro"
        frontend = "t4g.micro"
    }
}

variable "common_tags" {
    type = map
    default = {
        Project = "expence"
        terraform = "true"
    }
}