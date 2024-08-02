
terraform {
  required_providers {
    equinix = {
      source = "equinix/equinix"
      version = "1.35.0"
    }
  }
}

provider equinix {
  client_id     = var.equinix_client_id
  client_secret = var.equinix_client_secret
}
