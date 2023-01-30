###########################
## Security Group - Main ##
###########################

# Create a Security Group for Redshift Serverless
resource "aws_security_group" "redshift-serverless-security-group" {
  depends_on = [aws_vpc.redshift-serverless-vpc]

  name        = "${var.app_name}-${var.app_environment}-redshift-serverless-security-group"
  description = "${var.app_name}-${var.app_environment}-redshift-serverless-security-group"

  vpc_id = aws_vpc.redshift-serverless-vpc.id
  
  ingress {
    description = "Redshift port"
    from_port   = 5439
    to_port     = 5439
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] // update this to secure the connection to the cluster
  }
  
  tags = {
    Name        = "${var.app_name}-${var.app_environment}-redshift-serverless-security-group"
    Environment = var.app_environment
  }
}