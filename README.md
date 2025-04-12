
# AWS EKS Cluster using Terraform

This project demonstrates how to **provision an Amazon Elastic Kubernetes Service (EKS) cluster** using **Terraform**, one of the most popular Infrastructure as Code (IaC) tools. The EKS cluster can be used to deploy, manage, and scale containerized applications using Kubernetes.

---

## Project Highlights

- 🔧 Infrastructure Provisioning with Terraform
- ☁️ EKS Cluster Setup on AWS
- 🌐 VPC, Subnets, NAT Gateway, and Internet Gateway Configuration
- 🛠️ Cluster Autoscaler, IAM Role Mapping, and Node Groups
- 📦 Application-ready environment for Kubernetes workloads

---

## 📁 Directory Structure

```bash
├── modules/
│   ├── eks/              # EKS module with IAM roles and node groups
│   ├── vpc/              # VPC networking setup
│   └── security_groups/  # Security group rules for cluster and nodes
├── main.tf               # Terraform main configuration
├── variables.tf          # Input variables
├── outputs.tf            # Output values
├── provider.tf           # AWS provider setup
├── terraform.tfvars      # Variable definitions
└── README.md             # Project documentation
```

---

## 📸 Project Architecture

![EKS Architecture](https://github.com/ruturaj2727/AWS-EKS-Cluster-using-Terraform/assets/eks-arch.png)

🌀 [Click to view the animated architecture GIF](https://github.com/ruturaj2727/AWS-EKS-Cluster-using-Terraform/assets/eks-animated.gif)

---

## Tools & Technologies

- **Terraform**
- **AWS EC2, EKS, VPC**
- **Kubernetes (kubectl)**
- **IAM, Subnets, NAT Gateway**
- **Terraform Modules**

---

##  Prerequisites

- AWS Account
- IAM User with necessary permissions
- Terraform installed
- AWS CLI configured
- `kubectl` installed

---

##  Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/ruturaj2727/AWS-EKS-Cluster-using-Terraform.git
cd AWS-EKS-Cluster-using-Terraform
```

### 2. Initialize Terraform

```bash
terraform init
```

### 3. Preview the plan

```bash
terraform plan
```

### 4. Apply the configuration

```bash
terraform apply
```

> Note: This will provision a full EKS cluster with supporting AWS infrastructure.

---

##  Outputs

- VPC ID
- EKS Cluster Name
- Node Group Details
- IAM Roles

You can retrieve your `kubeconfig` using:

```bash
aws eks update-kubeconfig --region <your-region> --name <eks-cluster-name>
```

---

## 🧹 Cleanup

To destroy all resources and avoid AWS charges:

```bash
terraform destroy
```

---

## 🧠 Learning Outcome

- Deploying infrastructure using Terraform modules
- EKS cluster automation
- Working with IAM, Subnets, Security Groups, and EC2 instances
- Real-world cloud provisioning flow with DevOps best practices

---

## 🙋‍♂️ Author

👨‍💻 [Ruturaj Sonone](https://github.com/ruturaj2727)

---

## 📄 License

This project is licensed under the MIT License. Feel free to use and modify.

---

## ⭐️ Show Your Support

If you found this helpful, consider giving the repo a ⭐ and sharing it with your peers!
