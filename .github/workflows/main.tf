terraform {
  cloud {
    organization = "VolvoCars-F5"workspaces {
      name = "f5-tf-bigip-noneprod"
    }
  }
  required_providers {
    bigip = {
      source  = "F5Networks/bigip"
      version = "1.13.1"
    }
  }
}
