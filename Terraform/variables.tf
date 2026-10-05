variable "cloud_id" {
  description = "ID облака в Яндекс.Облаке"
}

variable "folder_id" {
  description = "ID каталога в Яндекс.Облаке"
}

variable "ssh_user" {
  description = "Имя пользователя для SSH-доступа на ВМ"
  default     = "ubuntu"
}
