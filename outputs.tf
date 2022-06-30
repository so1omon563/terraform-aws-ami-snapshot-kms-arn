output "kms_arn" {
  value = var.ami_id != null ? data.aws_ebs_snapshot.ebs_volume_ami_id[(var.ami_id)].kms_key_id : data.aws_ebs_snapshot.ebs_volume_snapshot_id[(var.snapshot_id)].kms_key_id
}

output "snapshot_id" {
  value = var.snapshot_id == null ? data.external.snap_id[(var.ami_id)].result.id : var.snapshot_id
}

output "ami_id" {
  value = var.ami_id
}
