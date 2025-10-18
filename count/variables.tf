variable "instances" {
    default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend" ]
}

variable "zone_id" {
    default = "Z10042263JCJ5ZTK2AT9J"
}

variable "domain_name" {
    default = "surendevops.fun"
}