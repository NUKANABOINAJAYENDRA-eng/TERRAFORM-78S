resource "aws_instance" "jay" {
    for_each = var.instance_names 
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-05be084510a525d8c"]
    instance_type = each.value
    tags = merge(
        var.common_tags,
        {
            Name = each.key
            Module = each.key
        }
    )
}