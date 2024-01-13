resource "aws_cognito_user_pool_client" "default" {
  count = length(var.clients) > 0 ? length(var.clients) : 0
  name                                 = var.clients[count.index]["name"]
  user_pool_id                         = aws_cognito_user_pool.default.id
  callback_urls                        = var.clients[count.index]["callback_urls"]
  logout_urls = var.clients[count.index]["logout_urls"]
  allowed_oauth_flows_user_pool_client = var.clients[count.index]["allowed_oauth_flows_bool"]
  allowed_oauth_flows                  = var.clients[count.index]["allowed_oauth_flows"]
  allowed_oauth_scopes                 = var.clients[count.index]["allowed_oauth_scopes"]
  supported_identity_providers         = var.clients[count.index]["supported_identity_providers"]
  explicit_auth_flows = var.clients[count.index]["explicit_auth_flows"]
  prevent_user_existence_errors = var.clients[count.index]["prevent_user_existence_errors"]
  enable_token_revocation = var.clients[count.index]["enable_token_revocation"]
}