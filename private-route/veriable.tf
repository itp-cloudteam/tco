
variable "vpc_id" {
  type = string

}

variable "AZs" {
  type = "list(string)"
  deafult = ["a","b","c","d","e","f"]
}

variable "route_type" {

  type = string
  
  default = "private"

}

variable "env"{
  type = "string"
}