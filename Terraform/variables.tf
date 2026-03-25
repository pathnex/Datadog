variable "datadog_api_key" {
  default   = "558e67d539895f191cc5218f2e96bd" # Change this value with your API KEY
  type      = string
#  sensitive = true
}
variable "datadog_app_key" {
  default   = "ddapp_19K3aIeZRLbgmM0vR2cPg3pkz51toHIV"  # Change this value with your APP KEY
  type      = string
  type      = string
 # sensitive = true
}

variable "env" {
  description = "Environment tag for monitors"
  type        = string
  default     = "prod"
}
