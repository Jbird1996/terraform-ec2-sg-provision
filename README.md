# Terraform 3 tier architecture. VPC with web, App and DB tiers.

In this project I completed a 3 tier architecture on AWS using terraform. To complete this project I used terraform modules from the terraform registry, Youtube videos, stackoverflow and Google.

The project creates a VPC, 1 bastion EC2 host, 2 Private EC2 instance, 2 security groups, subnets, route tables.

To make this project better I would consider adding load balancers to each AZ. Also adding a database with replication to make it fault tolerant. If this architecture received increased traffic you could consider adding a cache or CDN to improve performance.

The complete architecture is similar to the below image without the load balancer, auto scaling groups and databases.

![image](https://user-images.githubusercontent.com/117186369/212902905-29f2536f-5a0d-4aaf-af22-a4be7b83bb05.png)

## Why use Terraform?

IaC replaces standard operating procedures and manual effort required for IT resource management with lines of code. Instead of manually configuring cloud nodes or physical hardware, IaC automates the process infrastructure management through source code.

Several of the major key benefits of using an IaC solution like Terraform:

Speed and Simplicity. IaC eliminates manual processes, thereby accelerating the delivery and management lifecycles. IaC makes it possible to spin up an entire infrastructure architecture by simply running a script.

Team Collaboration. Various team members can collaborate on IaC software in the same way they would with regular application code through tools like Github. Code can be easily linked to issue tracking systems for future use and reference.

Error Reduction. IaC minimizes the probability of errors or deviations when provisioning your infrastructure. The code completely standardizes your setup, allowing applications to run smoothly and error-free without the constant need for admin oversight.

Disaster Recovery. With IaC you can actually recover from disasters more rapidly. Because manually constructed infrastructure needs to be manually rebuilt. But with IaC, you can usually just re-run scripts and have the exact same software provisioned again.


### Completing the project

I will be writing a quick description of each file and its purpose.

#### app1-install.sh 

This shell script runs on the private ec2 instances when they are setup successfully.

#### datasource-ami.tf

This file contains the AMI information for the ec2 instances. It creates an amazon linux ec2 instance.

#### ec2instance-bastion.tf 

This file creates the bastion host. Using the ec2 module from the terraform registry and the inputs are from variables files within the project.

#### ec2instance-outputs.tf

This file produces a list of outputs from the ec2 instances when they are created, these outputs can then be used in other files within the project.

#### ec2instance-private.tf

I had to change the module version of this file as I couldnt get it to work using the most up to date version of the EC2 module. This file creates 2 private ec2 instances and places them in 2 different subnets. Then runs the app1 shell script.

#### ec2instance-variables.tf 

This file contains the EC2 instance type to be used, the instance keypair to be associated with the EC2 instances and the private instance count which is overwritten by the ec2instance.auto.tfvars file.


#### Elasticip.tf

The file creates an elastic IP for the bastion host. An Elastic IP address is a static IPv4 address designed for dynamic cloud computing. An Elastic IP address is allocated to your AWS account, and is yours until you release it.

####


Terraform init

Terraform validate- During this phase I had to change several files to complete the validation. Creating this many files lead to some mistakes (mostly the wrong variable input) but I managed to rectify this.

Terraform plan

Terraform apply

The 6 subnets running correctly.

![image](https://user-images.githubusercontent.com/117186369/212904537-65bc00fe-5dc5-4172-9a81-8452d3761a46.png)

The VPC setup and running correctly.

![image](https://user-images.githubusercontent.com/117186369/212904691-43045d33-7dfe-4ee3-82c7-0bbf9d958727.png)

Security groups setup and running correctly.

![image](https://user-images.githubusercontent.com/117186369/212904777-44ff6969-1460-4bd1-9a5e-83dd91df2545.png)

1 bastion host and 2 private EC2 instances running correctly.

![image](https://user-images.githubusercontent.com/117186369/212904905-15c265e5-45ff-4a0e-ab29-5d9d771b7ca6.png)

Logging into the bastion host successfully.

![image](https://user-images.githubusercontent.com/117186369/212905020-12b36e5e-5c16-4e4c-ae85-28ffeb91cef6.png)

Connecting to the private EC2 instance from the bastion host successfully.

![image](https://user-images.githubusercontent.com/117186369/212905099-fcbeeca8-866f-4eb9-8b16-55d44395a0b4.png)






