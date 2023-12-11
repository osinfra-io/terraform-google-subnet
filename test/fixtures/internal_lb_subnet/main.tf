module "regional" {
  source = "../../../regional"

  ip_cidr_range = "10.61.240.0/20"
  name          = "kitchen-test-internal-lb-subnet-us-east1"
  network       = "kitchen-vpc"
  project       = var.project

  # Google Cloud Internal HTTP(S) Load Balancing is a proxy-based, regional Layer 7 load balancer that enables you to run and
  # scale your services behind an internal IP address. In this example we create a proxy-only subnet.

  # https://cloud.google.com/load-balancing/docs/proxy-only-subnets#proxy_only_subnet_create

  purpose = "INTERNAL_HTTPS_LOAD_BALANCER"
  region  = "us-east1"
  role    = "ACTIVE"
}
