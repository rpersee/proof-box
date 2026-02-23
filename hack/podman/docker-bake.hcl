variable "HOME" {
  default = "$HOME"
}

variable "BINARIES_DIR" {
  default = "${HOME}/.local/bin"
}

variable "BUILDX_REF" {
  default = "master"
}

target "default" {
  dockerfile = "Containerfile"
  output = [
    {
      type = "local"
      dest = BINARIES_DIR
    }
  ]
  args = {
    BUILDX_REF = BUILDX_REF
  }
}
