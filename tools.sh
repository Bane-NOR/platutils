#!/bin/bash
export PIP_BREAK_SYSTEM_PACKAGES='1'
export PIP_ROOT_USER_ACTION='ignore'

# This script is used to install the tools required for the platform utilities container.

# 01. Terraform
echo "Installing Terraform..."
curl https://releases.hashicorp.com/terraform/1.9.7/terraform_1.9.7_linux_amd64.zip -o terraform.zip && unzip terraform.zip
echo "Terraform installed successfully."

# 02. Azure CLI
apk add --no-cache py3-pip python3-dev gcc musl-dev linux-headers
pip install --upgrade pip && pip install azure-cli

# 03. Kubernetes tooling
apk add kubectl helm