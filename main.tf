#Module created by Gabrie Duarte Mafra - 2018.
#https://github.com/GMafra

resource "google_compute_subnetwork" "new-subnet" {
  name          = "${var.name}"
  region        = "${var.subnet-region}"
  network       = "${var.vpc}"
  ip_cidr_range = "${var.ip_cidr_range}"
  description   = "This modules creates a subnet on target VPC"
}
