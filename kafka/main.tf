module "kafka" {
    source  = "./module"
    topic_name  = toset(var.topics)
    segment_ms = var.segment
    cleanup_policy = var.cleanup
}