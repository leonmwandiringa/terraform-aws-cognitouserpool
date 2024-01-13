resource "aws_cognito_user_pool_domain" "default" {
  count = var.user_pool_domain_enabled ? 1 : 0
  domain       = var.user_pool_name
  user_pool_id = aws_cognito_user_pool.default.id
}