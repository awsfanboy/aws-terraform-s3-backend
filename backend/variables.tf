#Set the Variables here
variable "aws_profile" {
  description = "Profile name of the AWS Account"
  type = string
}

variable "region" {
  description = "AWS region Eg: us-east-1"
  type = string
}
