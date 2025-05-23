# Terraform Project for Multi-Cloud Infrastructure

This Terraform project is designed to create and manage virtual machines across multiple cloud providers, including Proxmox, AWS, and Azure, while utilizing Nutanix as a hyperconvergence layer. 

## Project Structure

The project is organized into modules, each responsible for a specific cloud provider or service:

- **modules/proxmox-vm**: Contains the configuration for creating a Proxmox virtual machine.
- **modules/aws-ec2**: Contains the configuration for creating an AWS EC2 instance.
- **modules/azure-vm**: Contains the configuration for creating an Azure virtual machine.
- **modules/nutanix**: Contains the configuration for integrating with Nutanix.

## Getting Started

### Prerequisites

- Terraform installed on your local machine.
- Access credentials for AWS, Azure, and Proxmox.
- Nutanix cluster access.

### Setup Instructions

1. Clone the repository:
   ```
   git clone <repository-url>
   cd terraform-project
   ```

2. Configure your provider credentials:
   - For AWS, set up your `~/.aws/credentials` file.
   - For Azure, use the Azure CLI to log in and set the subscription.
   - For Proxmox, ensure you have the necessary API access.

3. Customize the variables:
   - Edit `variables.tf` to set your desired configurations for all modules.

4. Initialize the Terraform project:
   ```
   terraform init
   ```

5. Plan the deployment:
   ```
   terraform plan
   ```

6. Apply the configuration:
   ```
   terraform apply
   ```

## Module Descriptions

- **Proxmox VM Module**: Manages the creation of virtual machines on a Proxmox server. Customize VM specifications through the `variables.tf` file in the `proxmox-vm` module.

- **AWS EC2 Module**: Manages the creation of EC2 instances on AWS. Customize instance types and other settings through the `variables.tf` file in the `aws-ec2` module.

- **Azure VM Module**: Manages the creation of virtual machines on Azure. Customize VM configurations through the `variables.tf` file in the `azure-vm` module.

- **Nutanix Module**: Integrates with Nutanix to manage resources and VMs. Customize settings through the `variables.tf` file in the `nutanix` module.

## Outputs

After deployment, you can view the outputs defined in `outputs.tf`, which will provide information such as VM IDs and public IP addresses for all created resources.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.

## Author

Alejandro Mercado 