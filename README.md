# Практическое задание: Terraform + Ansible

Проект разворачивает инфраструктуру из трех виртуальных машин в Yandex Cloud с помощью Terraform и конфигурирует их через Ansible.

## Структура проекта
- Terraform/ — манифесты для создания виртуальных машин (vm-1, vm-2, vm-3).
- Ansible/ — Playbook и роли:
  - common: установка системных утилит и настройка hostname.
  - nginx_serving: веб-серверы Nginx (vm-2, vm-3), отдающие Hello from <hostname>!.
  - nginx_proxy: обратный прокси-сервер (vm-1), принимающий запросы на порту 3000.

## Перед запуском

Создайте файл `Terraform/terraform.tfvars` со своими значениями (файл не публикуется из соображений безопасности):

cloud_id  = "<ваш cloud_id>"
folder_id = "<ваш folder_id>"

Узнать свои значения можно командой `yc config list`.

## Запуск
1. Развернуть инфраструктуру:
   cd Terraform && tofu apply
2. Настроить конфигурации:
   cd ../Ansible && ansible-playbook site.yml
