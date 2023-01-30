######################
# AWS Authentication #
######################
aws_region     = "eu-west-1"
aws_access_key = "complete-this"
aws_secret_key = "complete-this"

##########################
# Application Definition # 
##########################
app_name        = "kopicloud" # Do NOT enter any spaces
app_environment = "dev" # Dev, Test, Staging, Prod, etc

#########################
# Network Configuration #
#########################
redshift_serverless_vpc_cidr      = "10.20.0.0/16"
redshift_serverless_subnet_1_cidr = "10.20.1.0/24"
redshift_serverless_subnet_2_cidr = "10.20.2.0/24"
redshift_serverless_subnet_3_cidr = "10.20.3.0/24"

###################################
## Redshift Serverless Variables ##
###################################
redshift_serverless_namespace_name      = "kopicloud-namespace"
redshift_serverless_database_name       = "kopiclouddb" //must contain only lowercase alphanumeric characters, underscores, and dollar signs
redshift_serverless_admin_username      = "kopiadmin"
redshift_serverless_admin_password      = "M3ss1G0at10"
redshift_serverless_workgroup_name      = "kopicloud-workgroup"
redshift_serverless_base_capacity       = 32 // 32 RPUs to 512 RPUs in units of 8 (32,40,48...512)
redshift_serverless_publicly_accessible = false
