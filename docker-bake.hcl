group "default" {
  targets = ["helix", "helix-and-node", "p4docker", "robomerge"]
}

target "helix" {
  context = "./"
  dockerfile = "helix.Dockerfile"
  tags = ["helix:latest"]
}

target "helix-and-node" {
  context = "./"
  dockerfile = "helix-and-node.Dockerfile"
  tags = ["helix-and-node:latest"]
  contexts = {
    helix = "target:helix"
  }
}

target "p4docker" {
  context = "./"
  dockerfile = "Dockerfile.p4docker"
  tags = ["p4docker:latest"]
  contexts = {
    helix = "target:helix"
  }
}

target "robomerge" {
  context = "./"
  dockerfile = "Dockerfile"
  tags = ["robomerge:latest"]
  contexts = {
    helix-and-node = "target:helix-and-node"
  }
}
