module "regional" {
  source = "../../../regional"

  ip_cidr_range = "10.60.32.0/20"
  name          = "default-subnet-us-east1"
  network       = "kitchen-vpc"

  # When enabled, VMs in this subnetwork without external IP addresses can access Google APIs and
  # services by using Private Google Access. This is required for private Kubernetes clusters.

  private_ip_google_access = true
  project                  = var.project
  region                   = "us-east1"

  # Secondary ranges are used to allocate IP addresses to resources in a subnetwork. In this example we create Pod IP address ranges
  # and Service (ClusterIP) address ranges for a VPC-native cluster.

  # https://cloud.google.com/kubernetes-engine/docs/concepts/alias-ips

  secondary_ip_ranges = [
    {
      range_name    = "default-services-us-east1"
      ip_cidr_range = "10.61.16.0/20"
    },
    {
      range_name    = "default-pods-us-east1"
      ip_cidr_range = "10.8.0.0/14"
    }
  ]
}
