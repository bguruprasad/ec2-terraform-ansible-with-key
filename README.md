# ec2-terraform-ansible-with-key
Terraform Example for creating an EC2 instance and bootstrapping it with Ansible Playbook. EC2 Resource uses your own SSH keypair and connects using the same for ansible playbook execution.

## How to use:
You need to have following tools installed in your linux system in order to execute this.
- AWS Cli
- Terraform
- Ansible

> You need configure the AWS Cli and store your aws user credentials(access key and secret access key). You can also use profile if you want to use. To use the specific profile you need to mention an addition keyword in provider section of `main.tf` file.
