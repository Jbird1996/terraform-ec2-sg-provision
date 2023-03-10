# AWS EC2 Security Group Terraform Module
# Security Group for Public Bastion Host
module "public_bastion_security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.17.1"

  name = "public_bastion_security_group"
  description = "Security Group with SSH port open for everybody, egress ports are all open"
  vpc_id = module.vpc.vpc_id

  ingress_rules = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  egress_rules = ["all-all"]
  tags = local.common_tags
}
