resource "aws_iam_user" "s3_user" {
  name = var.iam_username
  tags = {
    Project   = "Project-6-Version-Control"
    ManagedBy = "Terraform"
  }
}

resource "aws_iam_policy" "s3_read_policy" {
  name        = var.s3_read_policy_name
  description = "S3 read policy stored in Terraform variable"
  policy      = var.s3_read_policy_json
}

resource "aws_iam_user_policy_attachment" "s3_read_attach" {
  user       = aws_iam_user.s3_user.name
  policy_arn = aws_iam_policy.s3_read_policy.arn
}
