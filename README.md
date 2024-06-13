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

- Open [terraform.tfvars](https://github.com/coolboy-ph/linode-v2ray-with-terraform/blob/main/terraform.tfvars) and update the **_token_**, **_root_pass_** and **_region_** variable with your Linode API token.
- Also need to update other configuration values **_config_account_**, **_config_password_** and **_config_port_** in the [setup_scripts.sh](https://github.com/coolboy-ph/linode-v2ray-with-terraform/blob/main/setup_script.sh)

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

7. Check Additional Information

For more detailed information about Linode's **_images_**, **_types_** and **_regions_**, refer to [this link](https://gist.github.com/displague/3c1728fdf4ff2bacf6960a9b8c6ea73f).
