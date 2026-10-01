resource "aws_instance" "k83" {
    ami = "ami-002a4813627fb6c96"
    vpc_security_group_ids = ["sg-05be084510a525d8c"]
    instance_type = "t4g.micro"
    tags = {
        Name = "ck"
    }
}