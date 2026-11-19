variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "iam_username" {
  type    = string
  default = "p4-s3-readonly-user"
}

variable "s3_read_policy_name" {
  type    = string
  default = "p4-s3-read-only-policy"
}

variable "s3_read_policy_json" {
  type    = string
  default = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Sid\":\"S3ReadOnlyAccess\",\"Effect\":\"Allow\",\"Action\":[\"s3:Get*\",\"s3:List*\"],\"Resource\":\"*\"}]}"
}
