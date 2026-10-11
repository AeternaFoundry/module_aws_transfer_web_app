variable "transfer_web_apps" {
  description = <<EOT
Map of transfer_web_apps, attributes below
Optional:
    - access_endpoint
    - region
    - tags
    - web_app_endpoint_policy
    - endpoint_details (block):
        - vpc (optional, block):
            - security_group_ids (optional)
            - subnet_ids (required)
            - vpc_id (required)
    - identity_provider_details (block):
        - identity_center_config (optional, block):
            - instance_arn (optional)
            - role (optional)
    - web_app_units (block):
        - provisioned (optional)
EOT

  type = map(object({
    access_endpoint         = optional(string)
    region                  = optional(string)
    tags                    = optional(map(string))
    web_app_endpoint_policy = optional(string)
    endpoint_details = optional(list(object({
      vpc = optional(list(object({
        security_group_ids = optional(set(string))
        subnet_ids         = set(string)
        vpc_id             = string
      })))
    })))
    identity_provider_details = optional(list(object({
      identity_center_config = optional(list(object({
        instance_arn = optional(string)
        role         = optional(string)
      })))
    })))
    web_app_units = optional(list(object({
      provisioned = optional(number)
    })))
  }))
}

