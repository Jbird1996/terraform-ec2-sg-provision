# AWS EC2 Security Group Terraform Outputs

# Public Bastion Host Security Group Outputs
output "public_bastion_security_group_group_id" {
  description = "The ID of the security group"
  value       = module.public_bastion_security_group.security_group_id
}

output "public_bastion_security_group_group_vpc_id" {
  description = "The VPC ID"
  value       = module.public_bastion_security_group.security_group_vpc_id
}

output "public_bastion_security_group_group_name" {
  description = "The name of the security group"
  value       = module.public_bastion_security_group.security_group_name
}

# Private EC2 Instances Security Group Outputs
output "private_bastion_sg_group_id" {
  description = "The ID of the security group"
  value       = module.private_bastion_sg.security_group_id
}

output "private_bastion_sg_group_vpc_id" {
  description = "The VPC ID"
  value       = module.private_bastion_sg.security_group_vpc_id
}

output "private_bastion_sg_group_name" {
  description = "The name of the security group"
  value       = module.private_bastion_sg.security_group_name
}

