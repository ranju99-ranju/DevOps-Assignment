resource "google_compute_instance_group_manager" "prod_group" {
  name               = "prod-group"
  base_instance_name = "prod-instance"
  zone               = "asia-south1-a"

  version {
    instance_template = "prod-template"
  }

  target_size = 2
}
