# AWS EC2 Security Group Terraform Module
# Security Group for Private EC2 Instances
module "private_bastion_security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.17.1"

  name = "private-bastion-sg"
  description = "Security Group with HTTP & SSH port open for entire VPC, egress ports are all open"
  vpc_id = module.vpc.vpc_id

  ingress_rules = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]
  
  egress_rules = ["all-all"]
  tags = local.common_tags
}

