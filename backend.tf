resource "aws_lb" "backend" {
  name                       = "backend"
  internal                   = false
  load_balancer_type         = "application"
  enable_deletion_protection = false
}
