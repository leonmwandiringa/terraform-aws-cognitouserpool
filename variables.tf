variable "user_pool_name" {
  description = "user pool name"
  type = string
}

variable "mfa_enabled" {
  type = bool
  description = "cognito bool"
}

variable "alias_attributes" {
  type = list(string)
  description = "aliases" 
  default = []
}

variable "sms_authentication_message" {
  type = string
  description = "sms_authentication_message"
  default = null
}

variable "schema" {
  type = list(map(string))
  description = "cognito schema"
  default = []
}

variable "user_pool_domain_enabled" {
  type = bool
  description = "user pool domain enabled"
  default = false
}

variable "auto_verified_attributes" {
  type = list(string)
  default = []
  description = "auto verified"
}

variable "clients" {
  type = list(object({
    name = string
    callback_urls  = list(string)
    allowed_oauth_flows_bool = bool
    prevent_user_existence_errors = string
    enable_token_revocation = bool
    allowed_oauth_flows = list(string)
    allowed_oauth_scopes = list(string)
    supported_identity_providers = list(string)
    explicit_auth_flows = list(string)
    logout_urls = list(string)
  }))
  default = []
}

variable "min_password_length" {
  type = number
  description = "password length"
}

variable "global_tags" {
  type = object({
    Author      = string
    Environment = string
    Provisioner = string
    Region      = string
  })
  description = "base tags required in every resource"
}