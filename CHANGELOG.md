# Changelog

All notable changes to this module will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [0.1.2] - 2025-05-12

### Fixed
- Replaced incorrect `terraform.tf` with proper `.terraform-cloud/metadata.yml` configuration for no-code modules
- Fixed Terraform Cloud metadata format to match expected YAML structure
- Updated documentation to reflect the correct no-code module format

## [0.1.1] - 2025-05-12

### Added
- Terraform Cloud workspace metadata configuration for no-code module usage
- Automatic workspace tagging with "mtls", "certificates", "entitlement", and "terraform-managed"
- Predefined workspace naming pattern: "mtls-entitlement-{org.name}"
- Project organization settings for "Certificate Management" project
- Variable metadata to guide module configuration
- Improved documentation for Terraform Cloud integration

## [0.1.0] - 2025-05-12

### Added
- Initial release of the terraform-mtls-entitlement module
- Basic functionality to manage certificate entitlements
- Example implementation in examples/basic
- Documentation in README.md and MODULE.md

