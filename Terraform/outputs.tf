output "vm_ips" {
  value = yandex_compute_instance.vm[*].network_interface.0.nat_ip_address
}

output "vm_names" {
  value = yandex_compute_instance.vm[*].name
}
