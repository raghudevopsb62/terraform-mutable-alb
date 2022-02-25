resource "aws_lb" "frontend" {
  name                       = "frontend"
  internal                   = false
  load_balancer_type         = "application"
  enable_deletion_protection = false
  subnets                    = ["subnet-0b673cb0f74714420", "subnet-01f5793a850edca81"]
}

resource "aws_lb" "backend" {
  name                       = "backend"
  internal                   = false
  load_balancer_type         = "application"
  enable_deletion_protection = false
  subnets                    = ["subnet-0b673cb0f74714420", "subnet-01f5793a850edca81"]
}

//module "tags" {
//  count       = length(local.ALL_TAGS)
//  source      = "git::https://github.com/raghudevopsb62/terraform-tags"
//  TAG_NAME    = lookup(element(local.ALL_TAGS, count.index), "name")
//  TAG_VALUE   = lookup(element(local.ALL_TAGS, count.index), "value")
//  RESOURCE_ID =
//}
//
//locals {
//  ALL_TAGS = [
//    {
//      name  = "env"
//      value = var.ENV
//    },
//    {
//      name  = "project_name"
//      value = "roboshop"
//    }
//  ]
//}

output "ALB" {
  value = aws_lb.frontend
}
