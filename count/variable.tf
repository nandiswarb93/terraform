variable "instances" {
  default = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue", "user", "cart", "shipping", "payment", "frontend"]
}

variable "zone_id" {
  default = "Z0743285P8DPU280FJ3K"

}


variable "domain_name" {
  default = "nandiswar.fun"

}
