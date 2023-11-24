output "public_subnets" {
  value = values(aws_subnet.public_subnets)[*].id
}

output "private_subnets" {
  value = values(aws_subnet.private_subnets)[*].id
}
