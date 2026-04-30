module "vpc" {
  source         = "../../modules/network/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  tags = {
    Environment = "Dev"
    Team        = "QA"
  }
}



module "subnets" {
  source  = "../../modules/network/subnets"
  vpc_id  = module.vpc.vpc_id
  subnets = var.subnets
}