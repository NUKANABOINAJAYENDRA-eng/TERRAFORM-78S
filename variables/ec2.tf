resource "aws_instance" "jay" {
    ami = var.image_id
    instance_type = var.instance_type
    tags = var.tags

}

resource "aws_security_group" "allow_ssh" {
    name = var.sg_name
    description = var.sg_description

    ingress {
        from_port = var.ssh_port
        to_port = var.ssh_port
        protocol = var.protocol
        cidr_blocks = var.allowed_cidr
    }


    egress {
        
        from_port = var.ssh_port
        to_port = var.ssh_port
        protocol = var.protocol
        cidr_blocks = var.allowed_cidr

    }
}