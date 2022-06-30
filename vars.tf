variable "ami_id" {
  type        = string
  description = "An AMI ID to look up KMS information for. Either this or the `snapshot_id` must be specified."
  default     = null
}

variable "snapshot_id" {
  type        = string
  description = "An EBS Snapshot ID to look up KMS information for. Either this or `ami_id` must be specified."
  default     = null
}
