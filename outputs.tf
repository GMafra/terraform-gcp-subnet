output "gateway_address" {
  value       = "${google_compute_subnetwork.new-subnet.gateway_address}"
  description = "The IP address of the gateway."
}

output "self_link" {
  value       = "${google_compute_subnetwork.new-subnet.self_link}"
  description = "The URI of the created resource"
}

output "ip_cidr_range" {
  value       = "${google_compute_subnetwork.new-subnet.ip_cidr_range}"
  description = "The IP address range that machines in this network are assigned to, represented as a CIDR block"
}
output "name" {
  value       = "${google_compute_subnetwork.new-subnet.name}"
  description = "Subnetwork name"
}
