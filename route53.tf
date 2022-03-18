resource "aws_route53_record" "frontend" {
  zone_id = data.terraform_remote_state.vpc.outputs.INTERNAL_HOSTED_ZONEID
  name    = "roboshop-${var.ENV}.${data.terraform_remote_state.vpc.outputs.INTERNAL_HOSTED_ZONE_NAME}"
  type    = "CNAME"
  ttl     = "300"
  records = [aws_db_instance.default.address]
}
