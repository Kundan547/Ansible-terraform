output "web_instance_id" {
  value = aws_instance.web_instance.id
}

output "db_instance_id" {
  value = aws_instance.db_instance.id
}
