terraform {
  required_providers {

    kind = {
      source  = "kyma-incubator/kind"
      version = "0.0.11"
    }
  }

  required_version = ">= 1.0.0"
}
