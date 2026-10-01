locals {
    ami_id = "ami-002a4813627fb6c96"
    sg_id = "sg-05be084510a525d8c"
    instance_type = var.instance_type == "db" ? "t4g.small" : "t4g.micro"
    tags = {
        Name = "locals"
    }
}