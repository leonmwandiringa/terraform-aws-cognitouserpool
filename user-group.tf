resource "aws_cognito_user_group" "default" {
  count = length(var.user_groups)
  name         = var.user_groups[count.index]
  user_pool_id = aws_cognito_user_pool.default.id
}