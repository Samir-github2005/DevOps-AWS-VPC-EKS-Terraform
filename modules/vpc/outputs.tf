output "vpc_id" {
    description = "VPC ID"
    value = aws_vpc.eks_vpc.id  
}

output "private_subnet_ids"{
    description = "private subnet ids"
    value= aws_subnet.private[*].id
}

output "public_subnet_ids"{
    description = "public subnet ids"
    value= aws_subnet.public[*].id
}