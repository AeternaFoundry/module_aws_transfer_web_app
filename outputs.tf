output "transfer_web_apps_access_endpoint" {
  description = "Map of access_endpoint values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = { for k, v in aws_transfer_web_app.transfer_web_apps : k => v.access_endpoint if v.access_endpoint != null && length(v.access_endpoint) > 0 }
}
output "transfer_web_apps_arn" {
  description = "Map of arn values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = { for k, v in aws_transfer_web_app.transfer_web_apps : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "transfer_web_apps_endpoint_details" {
  description = "Map of endpoint_details values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = { for k, v in aws_transfer_web_app.transfer_web_apps : k => v.endpoint_details if v.endpoint_details != null && length(v.endpoint_details) > 0 }
}
output "transfer_web_apps_identity_provider_details" {
  description = "Map of identity_provider_details values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = { for k, v in aws_transfer_web_app.transfer_web_apps : k => v.identity_provider_details if v.identity_provider_details != null && length(v.identity_provider_details) > 0 }
}
output "transfer_web_apps_region" {
  description = "Map of region values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = { for k, v in aws_transfer_web_app.transfer_web_apps : k => v.region if v.region != null && length(v.region) > 0 }
}
output "transfer_web_apps_tags" {
  description = "Map of tags values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = { for k, v in aws_transfer_web_app.transfer_web_apps : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "transfer_web_apps_tags_all" {
  description = "Map of tags_all values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = { for k, v in aws_transfer_web_app.transfer_web_apps : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "transfer_web_apps_web_app_endpoint_policy" {
  description = "Map of web_app_endpoint_policy values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = { for k, v in aws_transfer_web_app.transfer_web_apps : k => v.web_app_endpoint_policy if v.web_app_endpoint_policy != null && length(v.web_app_endpoint_policy) > 0 }
}
output "transfer_web_apps_web_app_id" {
  description = "Map of web_app_id values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = { for k, v in aws_transfer_web_app.transfer_web_apps : k => v.web_app_id if v.web_app_id != null && length(v.web_app_id) > 0 }
}
output "transfer_web_apps_web_app_units" {
  description = "Map of web_app_units values across all transfer_web_apps, keyed the same as var.transfer_web_apps"
  value       = { for k, v in aws_transfer_web_app.transfer_web_apps : k => v.web_app_units if v.web_app_units != null && length(v.web_app_units) > 0 }
}

