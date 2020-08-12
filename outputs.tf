output "bastion_ip" {
  value = module.dev.bastion
}

output "webserver_ip" {
  value = module.dev.webserver
}

output "api_ip" {
  value = module.dev.api
}
