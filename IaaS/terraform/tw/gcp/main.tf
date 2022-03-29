terraform {
  required_version = ">= 0.15"
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.11.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "4.11.0"
    }
  }
}

variable "region" { default = "asia-east1" }
variable "zone" { default = "asia-east1-b" }
variable "service_name" { default = "gcp-kotlin-deployment" }
variable "district" { default = "tw" }
variable "cloud" { default = "gcp" }

provider "google" {
  project     = var.service_name
  region      = var.region
  zone        = var.zone
  credentials = "${var.service_name}-${var.district}-${var.cloud}.json"
}

provider "google-beta" {
  project     = var.service_name
  region      = var.region
  zone        = var.zone
  credentials = "${var.service_name}-${var.district}-${var.cloud}.json"
}

//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWWXKOkxdddddddxkO0KNWMMMMMMMMMMMMMMMMMMMMMMWWWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWNKkoc;'...............',:ldkKNWMMMMMMMMWWXKOkxollloxKWMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWXkl;............................;lkKWWX0Oxoc:,,',,,'''';oKWMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXkc'..................................';:;,''',,;coddl,''''';xXMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWKd,...........................................',:::cc:;,''''''',lKWMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMWXKNMMMMMMMMMMMMMMMMWXd'...............................................''''''''''''''''':OWMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMWKx:.,OMMMMMMMMMMMMMMMNk;.................''''''''''''.......................''''''''''''''';OWMMMMMMMMMMMMMMMMMMM
//MMMMMMWKx:'.  ,0MMMMMMMMMMMMMMXo...............'''''''''''''''''''''...................'''''''''''''''cKMMMMMMMMMMMMMMMMMMM
//MMMWKx:...... ,0MMMMMMMMMMMMMKc..............''''''''''''''''''''''''....................'''''..'''''.;OWMMMMMMMMMMMMMMMMMM
//WKx:......... 'OMMMMMMMMMMMW0;...............''''''''''''''''''''''''''....................''......''.,xWMMMMMMMMMMMMMMMMMM
//l.. ...........dWMMMMMMMMMWk'.................''''''''''''''''''''''''''................. ............'xWMMMMMMMMMMMMMMMMMM
//' ............ ;KMMMMMMMMNd........................'''''''''''''''''''''.................. .':;'......,xWMMMMMMMMMMMMMMMMMM
//:  .............:KWMMMMWKc..................................''''''''''..................... 'kKxc'....cKMMMMMMMMMMMMMMMMMMM
//o. ..............'lkOOxl'....................................................................:KWN0kddkXWMMMMMMMMMMMMMMMMMMM
//O' ...........................................................................................oNMMMMMMMMMMMMMMMMMMMMMMMMMMM
//Nc. ..........................................................................................,OWMMMMMMMMMMMMMMMMMMMMMMMMMM
//MO' .........................',;;,'........',;,,,''............................................lNMMMMMMMMMMMMMMMMMMMMMMMMMM
//MNl. ......................,lxO00ko;.....;dkOO00K0OOkdoc;'.................................... 'OMMMMMMMMMMMMMMMMMMMMMMMMMM
//MM0; .....................:xKXXXXXKx;...ckl'..'oXNNNNNNNX0ko:'..................................cXMMMMMMMMMMMMMMMMMMMMMMMMM
//MMWx. ...................,dKNX0O0XXOc..cKKd;:ldOXNNNNNNNKkdk0Oxc'................................dWMMMMMMMMMMMMMMMMMMMMMMMM
//MMMNo. ..................;kXNNX00XXk;.:0NKl':ONNNNNNNNNN0;  .cOX0o,..............................'kWMMMMMMMMMMMMMMMMMMMMMMM
//MMMMXc. .................;kXXNNXKK0d,:ONXd,..dNNNNNNNNNNX0d;..lXNNO:..............................'kWMMMMMMMMMMMMMMMMMMMMMM
//MMMMMK;  ................'o0KKK00KK00KXNXklcoKNNNNNNNNKo;:kX0OKNNNKl................................oXWMMMMMMMMMMMMWXxdKMMM
//MMMMMW0;  ................;x0OOKXNNNXKkx0XKKXNXKXXXNNKo,..oNNNNNNNx'.................................,dKWMMMMMMWN0xc'..lNMM
//MMMMMMW0;. ................;dOXNNNNXXk;.:OXNNNXKKXXNNKoccdKNNNNNNk,...';coolc,.........................':ldddol:,.......xWM
//MMMMMMMMKc. ...............;xKNNNNNN0c   ;kKXNNNNNNNNNK0KXXNNNNNO,..,lk0XXXXKkl'........................................;0M
//MMMMMMMMMXo. ..............:OXNNNNNNk' .;kXXK00KXXXXXK0kdlxKXNNN0l':xKNNNNNNNXOc.........................................lN
//MMMMMMMMMMNx'  ............:ONNNNNNXo..oNMMWXddKKKKOc,.. 'xKXNNNNX0KXXK000XNNX0o'.........................................x
//MMMMMMWWWWWNO;. .......''..;kXNNNNNXo..:kXNKl;kWWWW0,   .lKXNNNNNNNNNX00KXNNNKOc......................................... ,
//MMMMWWNNNWWWWKl.  ...:x00Ol;dKNNNNNXx::::ll:.,kNNNNO;  .c0XNNNNNNNNNNNNNNNNXKkl'........................................ .c
//MMMMNNWWWWWWWWNOl;,,oKWWMWKc:kXNNNNN0xxkkkxoccoxxdl;...l0NNNNNNNNNNXXXXXK0Oxl;.......................................  .:ON
//MMMMWXNNWWWWWWWWWNXKKNWMMNk,.cOXNNNNKOkkOOOOO0000Okdc:dKNNNNNNNNX0xoooll:;,.......................................   'lONMM
//MMMMWXNWWWWWWMMMMMMMWWMMW0:...ckXNNNNKOkOOO000OOOOOOO0XNNNNNNNXXOl,.............................................  .:xKWMMMM
//MMMMWNXWWMMMMMMMMMMMMMMMWk'....;d0XNNNX0OOOOOOkkkOOKXNNNNNNNXX0d;...........................................  ..:dKWMMMMMMM
//MMMMMWNNNNNWWMMMMMWWWMMMWk,.....,dO0KXXXKK000000KXNNNNNNNXXKOd:.........................................   .,cxKWMMMMMMMMMM
//MMMMMMMMWWNXXNWMMMMMMMMWXkc;,,,:ok00O00KKXXXXNNNNNNNNXXXK0xl,.................','..................    .':dONWMMMMMMMMMMMMM
//MMMMMMMMMMMWWXXXNNNWWWWKxolooooxOKKKK0OOO000KKKKKKK00Okxdoc,'..............'cx0XKx;...........    ..,cdOXWMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMWNNNKO0XKxccllloxk0KKKK0O00OOO0000000Okdoolllcc:;,'.....':clxKNWMMWNd....     ..,:ldOKNWMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMKl;cc::ccccdO0KKKKK0O0KOO0KKKKKK00kdllllllccc::;,;oOKNWWWMMWWWNO:..',;:loxOKNWMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMNOl::::ccldkO0KKKKK0OkkkO0KKKKKK0kdoc;:clcccc:;;;dNMMMMMMMMWNXXKO0KXNWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMWNXXKXXNNN0kO0000Okdc:ok0KKKKKK0Odl:,;:::c::;;,lKWMMWWMMMMMWNNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMWkldxxxddooc;cdkO00KK00kdoc;lkdc;;;;,,l0NWMMWWMMMMMMWNNNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMXo:loooooolcc:ldxxkkkkxdool:c0NXkoc;,',l0NWMMMMMMMMMWWNNNNNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMWKl:ooooooxOoc:cooooddooooool:dXWWWX0Okk0XXXNWWMMMWWWWWNNWWXXWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMWOccoooooooollcclooooooooooooc:dXWMMMMMMMMWNXXXNWMMWNNWWWNNNXNMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMNx:cooooooolll:cooooooooooooooc:oKWMMMMMMMMMMWNXXNWMWXNWMWXKNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMNd;coooollcc:;;:clllllloolllllc:,lKWMMMMMMMMMMMWNXXNNXKXXXXWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMW0oc:::::;;;;;;;;;::::::::;;;;;,:kNMMMMMMMMMMMMMMWNNNNWWNWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMNk:;::::::::;;;::::::::::::::;:oKMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXo::::::::::;;:lc::::::::::::::oKWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMW0l:::::::::;;oK0dc:::::::::::::l0WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMMMMMWNNXXXXNWWMMMMMWOl::::::;;;;oXMWKxc::::::::::;;oXMMMMMMMMMMMWWNNXXXXNWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMMWNKOkxddooddxkOKXWWMWkc::cllccdOKWMMMWKxc;;;;;;::clokOOKWWWNXK0Okxddoooddxk0XWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMWNKOkxdolllllollllodxkOOdllld0KdlkNMMMMMMMWXOkkkdcok0Oollloxkxdooollloolloloddddk0NWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMWN0kxkkxdolllllllllllllllllllloddcckNMMMMMMMMMMMMMXxcllllllllllloloollloollloodxkkdox0NMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMN0dooxxdoooollollllllloolollllllcc:ckNMMMMMMMMMMMMMMKo::ccllllllllllllloolllllloodxxoloxKWMMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMWKdlcllllllolllllollllllllllllllcccc::dXMMMMMMMMMMMMMMNxc::ccccccclllllllllloolllllllllllcoOWMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMWXxoccccccllllllllllllcccccccc:::::::cOWMMMMMMMMMMMMMMW0l:::::loolcccccccclllllllllcccccc:cdXMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMWNKOkdolccccccccccccllodxk00koooodx0NMMMMMMMMMMMMMMMMWX0OOOOXNNXK0kxxdollllcccllllloddxk0XWMMMMMMMMMMMMMMMMMMMMMMMMMM
//MMMMMMMMMMMWXK0OkxxxxxxkO0KXNWMMMMWNNNNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWNXXK0000000KKXNNWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM

resource "tls_private_key" "private_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "ssh_private_key_pem" {
  content         = tls_private_key.private_key.private_key_pem
  filename        = "../../../ansible/tw/gcp/${var.service_name}-${var.district}-${var.cloud}.pem"
  file_permission = "0400"
}

data "google_client_openid_userinfo" "userinfo" {}

resource "google_compute_firewall" "firewall" {
  name    = "${var.service_name}-${var.district}-${var.cloud}-firewall"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["22", "8080"]
  }

  source_ranges = ["0.0.0.0/0"]

  target_tags = [var.service_name]
}

resource "google_compute_address" "address" {
  name = "${var.service_name}-${var.district}-${var.cloud}-address"
}

resource "google_compute_instance" "instance" {
  name         = "${var.service_name}-${var.district}-${var.cloud}-instance"
  machine_type = "e2-medium"

  metadata = {
    ssh-keys = "${split("@", data.google_client_openid_userinfo.userinfo.email)[0]}:${tls_private_key.private_key.public_key_openssh}"
  }

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
      type  = "pd-ssd"
      size  = 32
    }
  }

  network_interface {
    network = "default"
    access_config {
      nat_ip = google_compute_address.address.address
    }
  }

  deletion_protection = false

  tags = [var.service_name]

  labels = {
    terraform = true
    service   = var.service_name
    district  = var.district
    cloud     = var.cloud
  }
}

output "public_ip" {
  value = google_compute_address.address.address
}

output "account" {
  value = data.google_client_openid_userinfo.userinfo.email
}