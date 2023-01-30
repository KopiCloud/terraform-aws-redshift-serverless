##########################################
## AWS & Terraform Provider - Variables ##
##########################################

# AWS connection & authentication

variable "aws_access_key" {
  type        = string
  description = "AWS access key"
  default     = ""
}

variable "aws_secret_key" {
  type        = string
  description = "AWS secret key"
  default     = ""
}

variable "aws_region" {
  type        = string
  description = "AWS region"
}

#############################
## Application - Variables ##
#############################

# Application definition

variable "app_name" {
  type        = string
  description = "Application name"
}

variable "app_environment" {
  type        = string
  description = "Application environment"
}

#########################
## Network - Variables ##
#########################

# Network configuration

variable "redshift_serverless_vpc_cidr" {
  type        = string
  description = "VPC IPv4 CIDR"
}

variable "redshift_serverless_subnet_1_cidr" {
  type        = string
  description = "IPv4 CIDR for Redshift subnet 1"
}

variable "redshift_serverless_subnet_2_cidr" {
  type        = string
  description = "IPv4 CIDR for Redshift subnet 2"
}

variable "redshift_serverless_subnet_3_cidr" {
  type        = string
  description = "IPv4 CIDR for Redshift subnet 3"
}

#####################################
## Redshift Serverless - Variables ##
#####################################

variable "redshift_serverless_namespace_name" {
  type        = string
  description = "Redshift Serverless Namespace Name"
}

variable "redshift_serverless_database_name" { 
  type        = string
  description = "Redshift Serverless Database Name"
}

variable "redshift_serverless_admin_username" {
  type        = string
  description = "Redshift Serverless Admin Username"
}

variable "redshift_serverless_admin_password" { 
  type        = string
  description = "Redshift Serverless Admin Password"
}

variable "redshift_serverless_workgroup_name" {
  type        = string
  description = "Redshift Serverless Workgroup Name"
}

variable "redshift_serverless_base_capacity" {
  type        = number
  description = "Redshift Serverless Base Capacity"
  default     = 32 // 32 RPUs to 512 RPUs in units of 8 (32,40,48...512)
}

variable "redshift_serverless_publicly_accessible" {
  type        = bool
  description = "Set the Redshift Serverless to be Publicly Accessible"
  default     = false
}