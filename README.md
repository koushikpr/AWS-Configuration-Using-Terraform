# AWS-Configuration-Using-Terraform

Description: This Repositories Provide you the procedure to Initiate an AWS EC2 Instance, create a AWS S3 Bucket, Generate a VPC with Internet Gateway,Subnets, Routing table and Create our own Custom Security Group with Custom Inbound/Outbound Rules Using Terraform

Pre-requisities for this project: 
---
1. AWS Account
* Create an AWS Account
* Generate an Access Key Pair
* Enable it
---
2. AWS For Windows/Linux/MacOs
* Linux OS
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```
* Windows 
```
msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi
```
* MacOS
```
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
```
---
3. Terraform
* Linux OS
```
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install terraform
```
* Windows
``` 
[https://releases.hashicorp.com/terraform/1.5.0/terraform_1.5.0_windows_386.zip](url)
```
* MacOS
```
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

Very Simple Infrastructure to run the code
--

1. Configure your Device by adding the AWS-Key Pair
```
aws configure
```
2. Go to the Desired Directory (  ec2launch , s3launch , securitygrouplaunch , vpclaunch )
3. Configure Your Desired variables in the Variables.tf file
4. Run Terraform
```
terraform init
terraform plan 
terraform apply
```
5. To delete a Terraform Resources
```
terraform destroy
```


