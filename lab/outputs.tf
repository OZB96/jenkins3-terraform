output "bastion" {
  value = aws_instance.bastion.public_ip
}

output "webserver"{
  value = aws_instance.webserver.0.public_ip
}

output "api"{
  value = aws_instance.api.0.public_ip
}
