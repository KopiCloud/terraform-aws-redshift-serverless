#######################
## Network - Outputs ##
#######################

output "redshift_serverless_vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.redshift-serverless-vpc.id
}

output "redshift_serverless_vpc_cidr" {
  description = "The CIDR of the VPC"
  value       = var.redshift_serverless_vpc_cidr
}

output "redshift_serverless_subnet_az1_id" {
  description = "Redshift Serverless Subnet AZ1"
  value       = aws_subnet.redshift-serverless-subnet-az1.id
}

output "redshift_serverless_subnet_az2_id" {
  description = "Redshift Serverless Subnet AZ2"
  value       = aws_subnet.redshift-serverless-subnet-az2.id
}

output "redshift_serverless_subnet_az3_id" {
  description = "Redshift Serverless Subnet AZ3"
  value       = aws_subnet.redshift-serverless-subnet-az3.id
}

output "redshift_serverless_subnet_az1_cidr" {
  description = "Redshift Serverless Subnet AZ1 CIDR"
  value       = var.redshift_serverless_subnet_1_cidr
}

output "redshift_serverless_subnet_az2_cidr" {
  description = "Redshift Serverless Subnet AZ2 CIDR"
  value       = var.redshift_serverless_subnet_2_cidr
}

output "redshift_serverless_subnet_az3_cidr" {
  description = "Redshift Serverless Subnet AZ3 CIDR"
  value       = var.redshift_serverless_subnet_3_cidr
}

############################
## Redshift IAM - Outputs ##
############################

output "redshift_serverless_iam" {
  description = "Redshift Serverless IAM"
  value       = aws_iam_role.redshift-serverless-role.arn
}

###################################
## Redshift Serverless - Outputs ##
###################################

output "redshift_serverless_namespace_id" {
  description = "Redshift Serverlss Namespace ID"
  value       = aws_redshiftserverless_namespace.serverless.namespace_id
}

output "redshift_serverless_namespace_arn" {
  description = "Redshift Serverlss Namespace ID"
  value       = aws_redshiftserverless_namespace.serverless.arn
}