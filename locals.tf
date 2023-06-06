locals {
  stage = split("-", terraform.workspace)[2]
}
