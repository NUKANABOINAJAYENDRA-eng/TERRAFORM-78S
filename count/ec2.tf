resource "aws_instance" "jay" {
    #count = 3
    count = length(var.instance_name)
    #--> it best way than the above 
    ami = var.image_id
    instance_type = var.instance_type
    tags = {
        Name = var.instance_name[count.index]
    }
}