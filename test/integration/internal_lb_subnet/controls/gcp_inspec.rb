# Chef InSpec
# https://www.chef.io/inspec

# Since this is the default test, we want to test as much as possible here and not be redundant in the other tests.

project = input('project')

control 'compute_subnet' do
  title 'Compute Subnet'

  # Compute Subnetwork Resource
  # https://docs.chef.io/inspec/resources/google_compute_subnetwork

  describe google_compute_subnetwork(project: project, name: 'internal-lb-subnet-us-east1',
                                     region: 'us-east1') do
    it { should exist }
    its('purpose') { should cmp 'INTERNAL_HTTPS_LOAD_BALANCER' }
    its('role') { should cmp 'ACTIVE' }
  end
end
