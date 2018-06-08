variable "rules" {
  description = "Map of known security group rules (define as 'name' = ['from port', 'to port', 'protocol', 'description'])"
  type        = "map"

  default = {
    #HTTP
    "http-80-tcp"   = [80, 80, "tcp", "HTTP"]
    "http-8080-tcp" = [8080, 8080, "tcp", "HTTP"]

    #HTTPS
    "https-443-tcp" = [443, 443, "tcp", "HTTPs"]

    #SSH
    "ssh-22-tcp" = [22, 22, "tcp", "SSH"]
  }
}
