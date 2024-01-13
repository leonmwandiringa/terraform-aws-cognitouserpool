output "id" {
  value = aws_cognito_user_pool.default.id
  description = "cognito pool id"
}

output "arn" {
  value = aws_cognito_user_pool.default.arn
  description = "cognito pool arn"
}

output "client_id" {
  value = length(var.clients) > 0 ? aws_cognito_user_pool_client.default.*.id : null
  description = "client id"
}

output "cognito_domain" {
  value = var.user_pool_domain_enabled ? "${var.user_pool_name}.auth.eu-central-1.amazoncognito.com" : ""
  description = "cognito domain"
}
