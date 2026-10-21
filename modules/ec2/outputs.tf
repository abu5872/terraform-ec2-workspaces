output "instance_ids" {
  value = aws_instance.ec2[*].id
}

output "security_group_id" {
  value = aws_security_group.ec2_sg.id
}
