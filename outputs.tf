output "s3vectors_vector_bucket_policies_policy" {
  description = "Map of policy values across all s3vectors_vector_bucket_policies, keyed the same as var.s3vectors_vector_bucket_policies"
  value       = { for k, v in aws_s3vectors_vector_bucket_policy.s3vectors_vector_bucket_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "s3vectors_vector_bucket_policies_region" {
  description = "Map of region values across all s3vectors_vector_bucket_policies, keyed the same as var.s3vectors_vector_bucket_policies"
  value       = { for k, v in aws_s3vectors_vector_bucket_policy.s3vectors_vector_bucket_policies : k => v.region if v.region != null && length(v.region) > 0 }
}
output "s3vectors_vector_bucket_policies_vector_bucket_arn" {
  description = "Map of vector_bucket_arn values across all s3vectors_vector_bucket_policies, keyed the same as var.s3vectors_vector_bucket_policies"
  value       = { for k, v in aws_s3vectors_vector_bucket_policy.s3vectors_vector_bucket_policies : k => v.vector_bucket_arn if v.vector_bucket_arn != null && length(v.vector_bucket_arn) > 0 }
}

