data "aws_ebs_snapshot" "ebs_volume_snapshot_id" {
  for_each     = local.snapshot_id
  snapshot_ids = [each.key]
}

data "aws_ebs_snapshot" "ebs_volume_ami_id" {
  for_each     = local.ami_id
  snapshot_ids = [data.external.snap_id[each.key].result.id]
}
