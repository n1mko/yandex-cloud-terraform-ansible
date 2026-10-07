# Указываем провайдера - Yandex Cloud
terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

# Настройка подключения к Yandex Cloud
provider "yandex" {
  service_account_key_file = pathexpand("~/key.json")
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = "ru-central1-a"
}
