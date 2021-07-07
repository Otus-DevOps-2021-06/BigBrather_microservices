output "k8s_master_external_ip_address" {
  value = [
    for instance in yandex_compute_instance.k8s-master :
    instance.network_interface.0.nat_ip_address
  ]
}

output "k8s_worker_external_ip_address" {
  value = [
    for instance in yandex_compute_instance.k8s-worker :
    instance.network_interface.0.nat_ip_address
  ]
}
