variable "segment" {
    default = {
        "one"  = "OneSegment"
        "two"  = "TwoSegments"
    }
}

variable "cleanup" {
    default = {
        "one"  = "OneCleanup"
        "two"  = "TwoCleanup"
    }
}

variable "topics" {
  default = ["one", "two", "three"]
}