# Linode V2Ray with Terraform

This repository provides a Terraform configuration to set up a V2Ray server on Linode automatically.

## Prerequisites
- **_Terraform_** installed on your local machine
- **_Linode API token_**

## Getting Started

1. Clone the Repository

~~~bash
git clone https://github.com/yourusername/linode-v2ray-terraform.git
cd linode-v2ray-terraform
~~~

2. Configure Terraform

- Open **_terraform.tfvars_** and update the **_token_**, **_root_pass_** and **_region_** variable with your Linode API token.
- Also need to update other configuration values **_config_account_**, **_config_password_** and **_config_port_** in the **_setup_scripts.sh_**

4. Initialize Terraform

~~~bash
terraform init
~~~

5. Apply the Terraform Configuration

~~~bash
terraform apply
~~~

Confirm the prompt to create the resources.

6. Access Your V2Ray Server

Once Terraform completes, your V2Ray server will be up and running on the provided Linode instance. You can access the V2Ray web UI with the provided port in the configuration.
