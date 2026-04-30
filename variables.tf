variable "vpc_cidr_block" {
  type = string
}
variable "subnets" {
  type = map(object({
    cidr = string
    az   = string
    type = string # Public or Private
  }))
}