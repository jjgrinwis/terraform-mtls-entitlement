variable "entitlement_id" {
  description = "CPS certificate entitlement ID"
  type        = number
  default     = 12345  # Replace with a valid entitlement ID
}

variable "hostnames" {
  description = "List of hostnames for the certificate"
  type        = list(string)
  default     = ["api.example.com", "service.example.com"]
}

variable "revision" {
  description = "Version number for the certificate configuration"
  type        = number
  default     = 1
}

