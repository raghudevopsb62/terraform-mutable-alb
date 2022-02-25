resource "aws_lb" "frontend" {
  name                       = "frontend"
  internal                   = false
  load_balancer_type         = "application"
  enable_deletion_protection = false
}
