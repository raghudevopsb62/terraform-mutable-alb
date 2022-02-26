resource "aws_lb" "frontend" {
  name                       = "frontend-${var.ENV}"
  internal                   = false
  load_balancer_type         = "application"
  enable_deletion_protection = false
  subnets                    = data.terraform_remote_state.vpc.outputs.SUBNETS_ID
  tags = {
    Name = "frontend-${var.ENV}"
    env  = var.ENV
  }
}

//resource "aws_lb" "backend" {
//  name                       = "backend-${var.ENV}"
//  internal                   = false
//  load_balancer_type         = "application"
//  enable_deletion_protection = false
//  subnets                    = ["subnet-0b673cb0f74714420", "subnet-01f5793a850edca81"]
//  tags = {
//    Name = "backend-${var.ENV}"
//    env  = var.ENV
//  }
//}
//
