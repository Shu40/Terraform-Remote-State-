# Terraform Remote State Backend using AWS

This project demonstrates **remote state management in Terraform** using AWS services.
It follows industry best practices for managing Terraform state securely in a team or production environment.

---

## 🚀 Features
- Remote Terraform state stored in **Amazon S3**
- **State locking** 
- Prevents concurrent state modification
- Secure Git workflow using `.gitignore`
- Production-style backend configuration

---

## 🧰 Tech Stack
- Terraform
- AWS S3
- AWS DynamoDB
- Git & GitHub

---

## 📁 Project Structure

Tf-bakend/
├── main.tf
├── terraform.lock.hcl
├── .gitignore
└── README.md

---

## ⚙️ How It Works
- Terraform stores its state file in an S3 bucket instead of local storage
- DynamoDB is used to lock the state during `terraform apply`
- State files are **not committed** to GitHub for security reasons

---

## ▶️ Usage

```bash
terraform init
terraform plan
terraform apply

