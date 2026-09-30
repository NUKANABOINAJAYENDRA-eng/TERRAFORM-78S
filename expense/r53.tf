/*
resource"aws_route53_record" "Expence" {
    count = length(var.instance_names)
    zone_id = var.zone_id
    name =
    type = "A"
    ttl = 1
    records = [aws_eip.lb.public_ip]
}
*/