terraform {
  cloud {
    organization = "dyleck"
    workspaces {
      name = "web-network-dev"
    }
  }
}