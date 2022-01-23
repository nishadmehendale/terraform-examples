variable "segment" {}

variable "cleanup" {}

variable "topics" {}

resource "null_resource" "print" {
  for_each = var.topics
  triggers = {
   key = uuid()
  }
  
  provisioner "local-exec" {
    command = <<-EOT
    echo ${each.key}
    echo ${lookup(var.cleanup, each.key, "compact")}
    echo ${lookup(var.segment, each.key, 20000)}
    EOT
  }
}
