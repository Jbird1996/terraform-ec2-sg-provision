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


Terraform init

Terraform validate- During this phase I had to change several files to complete the validation. Creating this many files lead to some mistakes (mostly the wrong variable input) but I managed to rectify this.

Terraform plan

Terraform apply
