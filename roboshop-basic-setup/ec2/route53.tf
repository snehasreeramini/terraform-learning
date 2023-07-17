resource "aws_route53_record" "component" {
  zone_id = "Z05207852YRR0B2XTDV6K"
  name    = "${var.COMPONENT}.dev..roboshopInternal"
  type    = "A"
  ttl     = "300"
  records = [aws_spot_instance_request.cheap_worker.private_ip]
}