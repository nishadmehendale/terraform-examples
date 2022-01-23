resource "kafka_topic" "kafka_topic" {
  for_each           = toset(var.topic_name)
  name               = each.key
  replication_factor = 1
  partitions         = 3
  config = {
    "segment.ms"     = lookup(var.segment_ms, each.key, "20000")
    "cleanup.policy" = lookup(var.cleanup_policy, each.key, "compact")
  }
}

resource "kafka_acl" "kafka_topic_acl" {
  for_each            = toset(var.topic_name)
  resource_name       = each.key
  resource_type       = "Topic"
  acl_principal       = "User:*"
  acl_host            = "*"
  acl_operation       = "All"
  acl_permission_type = "Allow"
}
