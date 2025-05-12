variable "revision" {
  description = "Version number for the certificate configuration"
  type        = number
  default     = 1
  
  validation {
    condition     = var.revision > 0
    error_message = "Revision must be a positive number."
  }
}

variable "created_hostnames" {
  description = "List of hostnames created for the certificate"
  type        = list(string)
  default     = []
}

variable "entitlement_id" {
  description = "CPS certificate entitlement ID"
  type        = number
  nullable    = false

  validation {
    condition     = var.entitlement_id > 0
    error_message = "Make sure you have a valid CPS entitlement ID. Create a certificate before trying to make a property."
  }
}

