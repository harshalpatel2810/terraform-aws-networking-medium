vpc_cidr_block = "10.0.0.0/16"
subnets = {
  "public_lb_1a" = {
    cidr = "10.0.1.0/24"
    az   = "ap-south-1a"
    type = "public"
  }
  "public_lb_1b" = {
    cidr = "10.0.2.0/24"
    az   = "ap-south-1b"
    type = "public"
  }
  "private_app_1a" = {
    cidr = "10.0.3.0/24"
    az   = "ap-south-1a"
    type = "private"
  }
  "private_app_1b" = {
    cidr = "10.0.4.0/24"
    az   = "ap-south-1b"
    type = "private"
  }
  "private_cache_1a" = {
    cidr = "10.0.5.0/24"
    az   = "ap-south-1a"
    type = "private"
  }
  "private_cache_1b" = {
    cidr = "10.0.6.0/24"
    az   = "ap-south-1b"
    type = "private"
  }
}