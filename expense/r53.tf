/*
resource"aws_route53_record" "Expence" {
    count = length(var.instance_names)
    zone_id = var.zone_id
    name = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_name[count.index]}.${daws78.online} 
    type = "A"
    ttl = 1
    records = var.instance_names[count.index] == "frontend" ? [aws_instance.Expence[count.index].public_ip] : [aws_instance.Expence[count.index].private_ip]
    allow_overwrite = true
}
*/ 