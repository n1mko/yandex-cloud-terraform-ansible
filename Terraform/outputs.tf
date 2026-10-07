# Вывод публичных IP-адресов всех трех созданных ВМ
output "vm_ips" {
  value = yandex_compute_instance.vm[*].network_interface.0.nat_ip_address
}

# Вывод имён созданных виртуальных машин
output "vm_names" {
  value = yandex_compute_instance.vm[*].name
}
