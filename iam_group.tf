resource "aws_iam_group" "kops_group" {
  name = "kops_group"
  path = "/"
}

data "aws_iam_policy" "AmazonEC2FullAccess" {
  name = "AmazonEC2FullAccess"
}

resource "aws_iam_group_policy_attachment" "kops" {
  group      = aws_iam_group.kops_group.name
  policy_arn = data.aws_iam_policy.AmazonEC2FullAccess.arn
}

resource "aws_iam_user" "kops" {
  name = "kops"
}

resource "aws_iam_user_group_membership" "kopsdev" {
  user   = aws_iam_user.kops.name
  groups = [aws_iam_group.kops_group.name]
}

resource "aws_iam_user_login_profile" "kops_login" {
  user                    = aws_iam_user.kops.name
  password_reset_required = true
}

output "password" {
  value     = aws_iam_user_login_profile.kops_login.password
  sensitive = true
}