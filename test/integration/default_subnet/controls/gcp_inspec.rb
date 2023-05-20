# Chef InSpec
# https://www.chef.io/inspec

# Since this is the default test, we want to test as much as possible here and not be redundant in the other tests.

project = input('project')

control 'compute_subnet' do
  title 'Compute Subnet'

  # Compute Subnetwork Resource
  # https://docs.chef.io/inspec/resources/google_compute_subnetwork

  describe google_compute_subnetwork(project: project, name: 'default-subnet-us-east1', region: 'us-east1') do
    it { should exist }
    its('log_config.flow_sampling') { should eq 0.5 }
    its('log_config.aggregation_interval') { should cmp 'INTERVAL_5_SEC' }
    its('log_config.metadata') { should include 'INCLUDE_ALL_METADATA' }
    its('private_ip_google_access') { should eq true }
  end
end
