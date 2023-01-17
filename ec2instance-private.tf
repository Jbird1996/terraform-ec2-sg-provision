# AWS EC2 Instance Terraform Module
# EC2 Instances that will be created in VPC Private Subnets
module "ec2_private" {
  depends_on = [ module.vpc ]
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"

  name                   = "${var.environment}-vm"
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  vpc_security_group_ids = [module.private_bastion_sg.security_group_id]
  subnet_id = element(module.vpc.private_subnets, 0)
  user_data = file("${path.module}/app1-install.sh")
  tags = local.common_tags
}


