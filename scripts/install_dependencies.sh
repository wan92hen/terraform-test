#!/bin/bash

function installTerraform()
{
  wget https://releases.hashicorp.com/terraform/0.12.6/terraform_0.12.6_linux_amd64.zip
  unzip terraform_0.12.6_linux_amd64.zip
  mv terraform /usr/local/bin/
  chmod +x /usr/local/bin/terraform
  rm -rf terraform_0.12.6_linux_amd64.zip
}

which terraform || installTerraform
