resource "null_resource" "print" {
  for_each = var.topic_name
  triggers = {
   key = uuid()
  }

  provisioner "local-exec" {
    command = <<-EOT
    echo ${each.key}
    echo ${lookup(var.cleanup_policy, each.key, "compact")}
    echo ${lookup(var.segment_ms, each.key, 20000)}
    EOT
  }
}