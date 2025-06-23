data "aws_availability_zones" "available" {
  state = "available"
}

output "az_info" {
    value = data.aws_availability_zones.available
  
}

/* data "aws_vpc" "default" {
  default = true
}
 */
data "aws_route_table" "main" {
  vpc_id = var.peer_vpc
  filter {
    name = "association.main"
    values = ["true"]
  }
}