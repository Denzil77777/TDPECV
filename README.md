# AWS Cloud Front - Curriculum Vitae

This small  IaS; Terraform project shows you how to publish your Curriculum Vitae using **Terraform (IaC)** and **AWS CloudFront**.  
It also demonstrates the steps how to manage your Curriculum Vitae, after converting from MS-Office, Google Docs, PDF and deliver it through AWS services. The aim is to show case the power of Terraform, in combination with other Software and applications. 

---

## 🚀 Features
- Deploys **AWS CloudFront** distribution via Terraform  
- Demonstrates **Infrastructure as Code (IaC)** best practices  
- Stores and serves CV in multiple formats (Word, PDF, Google Docs link)  
- Easily customizable for personal or professional use  

---

## 🛠️ Technologies Used
- **AWS Services** (CloudFront, S3, IAM)  
- **Terraform** (for Infrastructure as Code)  
- **MS Office / Google Docs** (for CV authoring)  
- **PDF**  

Methods / Notes:

This step will create the S3 bucket, CloudFront distribution, and required IAM roles.

Monitor the terminal output for any errors.

Make sure your AWS account has sufficient permissions.

Step 4: Access Your CV

Once deployment is complete, Terraform will output the CloudFront URL.
Open this URL in your browser to view your CV.

Methods / Notes:

You can share this URL with anyone.

The CloudFront distribution caches your CV globally for faster access.

Update your CV in the S3 bucket to automatically reflect changes through CloudFront.

Step 5: Architecture Overview

This project uses Terraform to provision AWS infrastructure. The diagram below illustrates the flow:

Methods / Notes:

S3 Bucket: Stores CV files in PDF, Word, or other formats.

CloudFront Distribution: Delivers your CV globally with low latency.

Terraform: Automates provisioning and deployment.

Users: Access your CV via the CloudFront URL.

Step 6: Contributing

Contributions, issues, and feature requests are welcome!
You can fork this repository and submit pull requests.

Methods / Notes:

Always create a new branch for your changes.

Test your changes locally before submitting a PR.

Follow proper commit message conventions.

Step 7: License

This project is licensed under the MIT License
