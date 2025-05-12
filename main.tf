/**
 * # Certificate Entitlement Module
 *
 * This module manages certificate entitlements for mTLS configuration.
 * See MODULE.md for detailed documentation.
 */

terraform {
  required_version = ">= 1.0.0"
}

resource "terraform_data" "replacement" {
  input = var.entitlement_id
  
  lifecycle {
    precondition {
      condition     = var.entitlement_id > 0
      error_message = "The entitlement_id must be a positive number."
    }
  }
}

