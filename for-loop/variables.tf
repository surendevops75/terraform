variable "instances" {
    default = [ "mongodb", "redis", "mysql" ]
    #default = {
        #mongodb = "t3.micro"
        #redis = "t3.micro"
        #mysql = "t3.small"
        #}
}

variable "zone_id" {
    default = "Z10042263JCJ5ZTK2AT9J"
}

variable "domain_name" {
    default = "surendevops.fun"
}