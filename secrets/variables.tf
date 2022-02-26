variable "secret"{
    sensitive = true
    default = "YOURSECRETAPIKEY"
}

variable "not_a_secret"{
    default = "THISISNOTASECRET"
}