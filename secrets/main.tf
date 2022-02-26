resource "null_resource" "print_secret" {
  triggers = {
   key = uuid()
  }

  provisioner "local-exec" {
    command = <<-EOT
    echo ${var.secret}
    EOT
  }
}


resource "null_resource" "print_not_a_secret" {
  triggers = {
   key = uuid()
  }

  provisioner "local-exec" {
    command = <<-EOT
    echo ${var.not_a_secret}
    EOT
  }
}

