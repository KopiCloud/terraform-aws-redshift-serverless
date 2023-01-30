################################
## Redshift Serverless - Main ##
################################

# Create the Redshift Serverless Namespace
resource "aws_redshiftserverless_namespace" "serverless" {
  namespace_name      = var.redshift_serverless_namespace_name
  db_name             = var.redshift_serverless_database_name
  admin_username      = var.redshift_serverless_admin_username
  admin_user_password = var.redshift_serverless_admin_password
  iam_roles           = [aws_iam_role.redshift-serverless-role.arn]

  tags = {
    Name        = var.redshift_serverless_namespace_name
    Environment = var.app_environment
  }
}

################################################

# Create the Redshift Serverless Workgroup
resource "aws_redshiftserverless_workgroup" "serverless" {
  depends_on = [aws_redshiftserverless_namespace.serverless]

  namespace_name = aws_redshiftserverless_namespace.serverless.id
  workgroup_name = var.redshift_serverless_workgroup_name
  base_capacity  = var.redshift_serverless_base_capacity
  
  security_group_ids = [ aws_security_group.redshift-serverless-security-group.id ]
  subnet_ids         = [ 
    aws_subnet.redshift-serverless-subnet-az1.id,
    aws_subnet.redshift-serverless-subnet-az2.id,
    aws_subnet.redshift-serverless-subnet-az3.id,
  ]
  publicly_accessible = var.redshift_serverless_publicly_accessible
  
  tags = {
    Name        = var.redshift_serverless_workgroup_name
    Environment = var.app_environment
  }
}
