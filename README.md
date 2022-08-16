
# Terraform S3 Backend with DynamoDB State lock

This Terraform script creates the S3 Backend for your Terraform code where you can store the State file.
And creates the DynamoDB to lock the State file.

## Prerequisites

* When you create the S3 bucket and the DynamoDB for the first time, make sure to comment all in the ``backend.tf`` file.
* Insall the latest Terraform CLI : https://learn.hashicorp.com/tutorials/terraform/install-cli
* Insall the latest AWS CLI : https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
* Setup the AWS Credentials with profiles, in this scenario i have `dev` aws accounts.
* ``dev`` for Development.

### Setup AWS profiles
For the dev account
``aws cli configure --profile dev
``
# Initial installation
* initate the terraform : ``terraform init``
* create a terraform workspace for ``dev`` : ``terraform workspace new dev``. Use this if you have more than one workspaces.
* plan the terraform for the dev account : ``terraform plan -var-file=dev.tfvars``
* apply the changes : ``terraform apply -var-file=dev.tfvars``

Once deployed successfully now you can enable the s3 backend in ``backend.tf`` file.

* Now we can re-configure the ``terrafrom init`` with new backend
* run ``terraform init -backend-config="dev-be.conf" -reconfigure``
* check the ``dev-be.conf`` file.

Now you S3 back end is ready use in your terraform resources.

## Authors

- [@devopswithzack](https://www.github.com/devopswithzack)


![Logo](https://github.com/devopswithzack/devopswithzack/blob/main/4x%20Profile%20Picture.png?raw=true)

