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