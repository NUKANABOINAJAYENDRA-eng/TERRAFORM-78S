resource "aws_instance" "jay" {
    ami = var.image_id
    instance_type = var.instance_type == jay ? "t4.medium" : "t4.micro"
    tags = var.tags
}