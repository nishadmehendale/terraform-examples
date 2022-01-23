terraform {
  required_providers {
    kafka = {
      source = "Mongey/kafka"
      version = "0.4.2"
    }
  }
}

provider "kafka" {
  bootstrap_servers = ["localhost:9092"]
  skip_tls_verify   = true
}