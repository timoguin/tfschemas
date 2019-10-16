provider "aws" {
  version = ">= 2.31.0, < 3.0"
}

provider "fastly" {
  version = ">= 0.10, < 1.0"
}

provider "github" {
  version = ">= 2.2.1, < 3.0"
}

provider "google" {
  version = ">= 2.16.0, < 3.0"
}

provider "pagerduty" {
  version = ">= 1.4.0, < 2.0"
}

# ---------------------------------------------------
# Community providers (Add to ~/.terraform.d/plugins)
# ---------------------------------------------------

# https://github.com/atlassian/terraform-provider-artifactory
# TODO: No binary releases provided. Needs to be built manually.
#provider "artifactory" {}

# https://github.com/jianyuan/terraform-provider-sentry/releases/download/v0.5.2/terraform-provider-sentry_0.5.2_darwin_amd64.tar.gz
provider "sentry" {
  version = ">= 0.5.2, < 1.0"
}

# https://github.com/Venafi/terraform-provider-venafi/releases/download/0.8.0/terraform-provider-venafi_v0.8.0_298_darwin86.zip
provider "venafi" {
  version = ">= 0.8.0, < 1.0"
}
