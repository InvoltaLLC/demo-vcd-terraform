# demo-vcd-terraform

## Purpose

Demonstrate how to use Terraform to manage resources within a VCloud Director vOrg

## Description

This Terraform configuration leverages Terraform Cloud to provision resources to a vOrg within VCloud Director.  For demonstration purposes, this configuration provisions a vApp with a corresponding application network.

Also included is a GitHub Actions workflow to apply this configuration when updates are committed or pulled into the `dev`, `qa`, or `prod` branches.
> **Note:** A repository secret must exist within GitHub which contains the contents of a valid .tfrc file to access the associated terraform cloud workspaces.  The secret name must be `TF_API_TOKEN`.

## Usage Instructions

```
terraform init
terraform workspace select ...
terraform validate
terraform plan
terraform apply
```

## Preconditions and Assumptions

None

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | -------- |
| token | An API token with the requisite access to VCloud Director to provisoin resources | string | - | yes |

## Outputs
This module provides no outputs.

## Versions

| Version | Major changes |
| ------- | ------------- |
| 1     | Created module |
