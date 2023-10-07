# <img align="left" width="45" height="45" src="https://user-images.githubusercontent.com/1610100/234732421-ef3a5c43-817d-4e99-8e0c-d43f07358791.png"> Google Cloud Platform - Subnet Terraform Module

**[GitHub Actions](https://github.com/osinfra-io/terraform-google-subnet/actions):**

[![Kitchen Tests](https://github.com/osinfra-io/terraform-google-subnet/actions/workflows/kitchen.yml/badge.svg)](https://github.com/osinfra-io/terraform-google-subnet/actions/workflows/kitchen.yml) [![CodeQL](https://github.com/osinfra-io/terraform-google-subnet/actions/workflows/github-code-scanning/codeql/badge.svg)](https://github.com/osinfra-io/terraform-google-subnet/actions/workflows/github-code-scanning/codeql) [![Dependabot](https://github.com/osinfra-io/terraform-google-subnet/actions/workflows/dependabot.yml/badge.svg)](https://github.com/osinfra-io/terraform-google-subnet/actions/workflows/dependabot.yml)

**[Infracost](https://www.infracost.io):**

[![infracost](https://img.shields.io/endpoint?label=Default%20Subnet&url=https://dashboard.api.infracost.io/shields/json/cbeecfe3-576f-4553-984c-e451a575ee47/repos/d88583c7-8fe6-43ba-87d9-fced10a54019/branch/79dd8603-0126-490f-9be5-45ea5c7b19fe/terraform-google-subnet%2520-%2520Default%2520Subnet)](https://dashboard.infracost.io/org/osinfra-io/repos/d88583c7-8fe6-43ba-87d9-fced10a54019) [![infracost](https://img.shields.io/endpoint?label=Internal%20Load%20Balancer%20Subnet&url=https://dashboard.api.infracost.io/shields/json/cbeecfe3-576f-4553-984c-e451a575ee47/repos/d88583c7-8fe6-43ba-87d9-fced10a54019/branch/79dd8603-0126-490f-9be5-45ea5c7b19fe/terraform-google-subnet%2520-%2520Internal%2520Load%2520Balancer%2520Subnet)](https://dashboard.infracost.io/org/osinfra-io/repos/d88583c7-8fe6-43ba-87d9-fced10a54019)

Monthly cost estimates for this module based on these usage values:

- [default subnet](test/fixtures/default_subnet/infracost-usage.yml)
- [internal load balancer subnet](test/fixtures/internal_lb_subnet/infracost-usage.yml)

## Repository Description

Terraform **example** module for a Google Cloud Platform Subnet.

*We do not recommend consuming this module like you might a [public module](https://registry.terraform.io/browse/modules). Its purpose is to be a baseline, something you can fork, potentially maintain, and modify to fit your organization's needs. Using public modules vs. writing your own has various [drivers and trade-offs](https://docs.osinfra.io/fundamentals/architecture-decision-records/adr-0003) that your organization should evaluate.*

## 🔩 Usage

You can check the [test/fixtures](test/fixtures/) directory for example configurations. These fixtures set up the system for testing by providing all the necessary code to initialize it, thus creating good examples to base your configurations on.

Here is an example of a basic configuration:

```hcl
module "subnet" {
  source   = "github.com/osinfra-io/terraform-google-subnet//regional?ref=v0.0.0"

  ip_cidr_range = "10.60.0.0/20"
  name          = "example-subnet-us-east1"
  network       = "example-vpc"
  project       = "example-project"
  region        = "us-east1"
}
```

## <img align="left" width="35" height="35" src="https://github.com/osinfra-io/github-organization-management/assets/1610100/39d6ae3b-ccc2-42db-92f1-276a5bc54e65"> Development

Our focus is on the core fundamental practice of platform engineering, Infrastructure as Code.

>Open Source Infrastructure (as Code) is a development model for infrastructure that focuses on open collaboration and applying relative lessons learned from software development practices that organizations can use internally at scale. - [Open Source Infrastructure (as Code)](https://www.osinfra.io)

To avoid slowing down stream-aligned teams, we want to open up the possibility for contributions. The Open Source Infrastructure (as Code) model allows team members external to the platform team to contribute with only a slight increase in cognitive load. This section is for developers who want to contribute to this repository, describing the tools used, the skills, and the knowledge required, along with Terraform documentation.

See the documentation for setting up a local development environment [here](https://docs.osinfra.io/fundamentals/development-setup).

### 🛠️ Tools

- [infracost](https://github.com/infracost/infracost)
- [inspec](https://github.com/inspec/inspec)
- [kitchen-terraform](https://github.com/newcontext-oss/kitchen-terraform)
- [pre-commit](https://github.com/pre-commit/pre-commit)
- [pre-commit-terraform](https://github.com/antonbabenko/pre-commit-terraform)
- [terraform-docs](https://github.com/terraform-docs/terraform-docs)

### 📋 Skills and Knowledge

Links to documentation and other resources required to develop and iterate in this repository successfully.

- [subnets](https://cloud.google.com/vpc/docs/subnets)

### 🔍 Tests

```none
bundle exec kitchen converge
```

```none
bundle exec kitchen verify
```

```none
bundle exec kitchen destroy
```

## 📓 Terraform Documentation

- [regional](regional/README.md)
