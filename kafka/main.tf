module "kafka" {
    source  = "./module"
    topics  = toset(var.topics)
    segment = var.segment
    cleanup = var.cleanup
}