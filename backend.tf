terraform {
  backend "remote" {
    organization = "TESTER_JORGAR"
    workspaces {
      name = "create_clusterk8"
    }
  }
}
