# Terraform 3 tier architecture. VPC with web, App and DB tiers.

In this project I completed a 3 tier architecture on AWS using terraform. To complete this project I used terraform modules from the terraform registry, Youtube videos, stackoverflow and Google.

The project creates a VPC, 1 bastion EC2 host, 2 Private EC2 instance, 2 security groups, subnets, route tables.

To make this project better I would consider adding load balancers to each AZ. Also adding a database with replication to make it fault tolerant. If this architecture received increased traffic you could consider adding a cache or CDN to improve performance.

The complete architecture is similar to the below image without the load balancer, auto scaling groups and databases.

![image](https://user-images.githubusercontent.com/117186369/212902905-29f2536f-5a0d-4aaf-af22-a4be7b83bb05.png)
