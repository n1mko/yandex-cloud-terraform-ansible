data "yandex_vpc_subnet" "existing" {
  subnet_id = "e9bttk7hsspkk003jfm8"
}

resource "yandex_compute_instance" "vm" {
  count = 3
  name  = "vm-${count.index + 1}"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd83ergat2e815oohe7o"
    }
  }

network_interface {
    subnet_id          = data.yandex_vpc_subnet.existing.id
    nat                = true
}

  metadata = {
    ssh-keys = "${var.ssh_user}:${file("~/.ssh/id_ed25519.pub")}"
  }
}
