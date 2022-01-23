variable "segment" {
    default = {
        "one"  = "30000"
    }
}

variable "cleanup" {
    default = {
        "one"  = "delete"
        "two"  = "compact, delete"
    }
}

variable "topics" {
  default = ["one", "two", "three"]
}