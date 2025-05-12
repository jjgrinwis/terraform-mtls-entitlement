# Certificate Entitlement Module

## Technical Documentation

This module manages certificate entitlements for mTLS configuration in Terraform. It's designed to be a reusable component for managing certificate configurations across your infrastructure.

## Module Architecture

The module consists of:

1. A `terraform_data` resource that captures the certificate entitlement ID
2. Input variables for configuration:
   - `entitlement_id`: The certificate entitlement ID (required)
   - `created_hostnames`: List of hostnames associated with the certificate
   - `revision`: Version number for tracking changes

## Implementation Details

### Input Validation

The module enforces validation on inputs:
- `entitlement_id` must be a positive number
- `revision` must be a positive number

### Lifecycle Management

The module includes lifecycle management through preconditions to ensure proper configuration before applying changes.

### Usage in Terraform Cloud

To use this module in Terraform Cloud:

1. Reference it in your Terraform configuration:
```hcl
module "mtls_entitlement" {
  source  = "git::https://github.com/your-org/terraform-mtls-entitlement.git?ref=v0.1.0"
  
  entitlement_id    = 12345
  created_hostnames = ["api.example.com"]
  revision          = 1
}
```

2. Configure your Terraform Cloud workspace to access the module repository.

## Security Considerations

- The `entitlement_id` output is marked as sensitive to prevent accidental exposure.

