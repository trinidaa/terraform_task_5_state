variable "subscription_id" {
  type      = string
  # default   = getenv("TF_VAR_SUBSCRIPTION_ID")
  sensitive = true
}
