<img width="1024" height="1024" alt="image" src="https://github.com/user-attachments/assets/875d6c1f-64d2-487b-9e5f-4f93df0ba819" /># 🚀✨ AWS Cloud Front - Curriculum Vitae

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

## Methods / Notes:

If you have your document (CV) in a .PDF you can use Adobe to convert to HTML using  "Export PDF Tool.  You can have a free trial with Adobe. Howvr the downside is you have to use your credit card,  in a view to obtaion that free 7 days.

In order to help you, I searched for options and found; https://app.gonitro.com/
They offer you a 14 day trial. 

## The Method I used.

The method I adopted.  You can use Microsoft VS Code to create a HTML, CSS to make it more professional and presentable. I used this approach, since two of my modules (1) Internet and the Multimedia and (2) Programming the Internet for my MSc in 2013, which came handy. The attached image of my CV is self explanatory.

Alternative  (C) If you have your CV in MS-Word, simply open it in MS-Word, choose SaveAs; Viz; MyCV.HTML. A word of advice here, it will give a normal HTML file. No styles, no colours and so on.

The steps are for Microsoft Windows 10 Professional.


## Methods / Notes for; How to install terraform in windows

How to install terraform in windowshttps://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli (Screenshot attached)Click on  appropriate zip archive You will be taken here; https://developer.hashicorp.com/terraform/installScroll down to Windows Binary Download. (Screenshot attached)Click on download, and you shall see a file like; terraform_1.13.2_windows_386.zipLocate the file terraform_1.13.2_windows_386.zip, and unzip.  (Screenshot attached)  I I am using 7Zip which is a free version. https://www.7-zip.org/Once unzipped, you should see a file; terraform_1.13.2_windows_386Double click and you should see (a) terraform.exe and (b) LICENSE.txtRight click on terraform.exe, Run as Administrator. This will install Terraform in your local, Microsoft Windows machine.In a view to if the installation was successful,  using your Command Prompt, go to the folder into which you had downloaded and then, installed Terraform.  In my case it is; C:\AWS_Projects_MB_13MAY2025\Test_Drive_10SEP2025\T13SEP2025>At the Command prompt, type terraform and press Enter key. Now you see the below;

C:\AWS_Projects_MB_13MAY2025\Test_Drive_10SEP2025\T13SEP2025>terraform
(Usage: terraform [global options] <subcommand> [args])




## Step 5: The Results you should see, once you type Terraform and Press Enter key

The available commands for execution are listed below.
The primary workflow commands are given first, followed by
less common or more advanced commands.

Main commands:
  init          Prepare your working directory for other commands
  validate      Check whether the configuration is valid
  plan          Show changes required by the current configuration
  apply         Create or update infrastructure
  destroy       Destroy previously-created infrastructure

All other commands:
  console       Try Terraform expressions at an interactive command prompt
  fmt           Reformat your configuration in the standard style
  force-unlock  Release a stuck lock on the current workspace
  get           Install or upgrade remote Terraform modules
  graph         Generate a Graphviz graph of the steps in an operation
  import        Associate existing infrastructure with a Terraform resource
  login         Obtain and save credentials for a remote host
  logout        Remove locally-stored credentials for a remote host
  metadata      Metadata related commands
  modules       Show all declared modules in a working directory
  output        Show output values from your root module
  providers     Show the providers required for this configuration
  refresh       Update the state to match remote systems
  show          Show the current state or a saved plan
  state         Advanced state management
  taint         Mark a resource instance as not fully functional
  test          Execute integration tests for Terraform modules
  untaint       Remove the 'tainted' state from a resource instance
  version       Show the current Terraform version
  workspace     Workspace management
  Global options (use these before the subcommand, if any):
  -chdir=DIR    Switch to a different working directory before executing the
                given subcommand.
  -help         Show this help output, or the help for a specified subcommand.
  -version      An alias for the "version" subcommand.

C:\AWS_Projects_MB_13MAY2025\Test_Drive_10SEP2025\T13SEP2025>

Hoorah!! You have a successful installation of Terraform.  <img width="90" height="90" alt="image" src="https://github.com/user-attachments/assets/3e73c4a5-2fca-4511-8513-6f6fe4294d99" />


## Methods / Notes:

S3 Bucket: Stores CV files in PDF, Word, or other formats.

CloudFront Distribution: Delivers your CV globally with low latency.

Terraform: Automates provisioning and deployment.

Users: Access your CV via the CloudFront URL.

## Step 6: Contributing

Contributions, issues, and feature requests are welcome!
You can fork this repository and submit pull requests.

## Methods / Notes:

Always create a new branch for your changes.

Test your changes locally before submitting a PR.

Follow proper commit message conventions.

## Step 7: License

This project is licensed under the MIT License Step 4: Access Your CV

Once deployment is complete, Terraform will output the CloudFront URL.
Open this URL in your browser to view your CV.

## Methods / Notes:

You can share this URL with anyone.

The CloudFront distribution caches your CV globally for faster access.

Update your CV in the S3 bucket to automatically reflect changes through CloudFront.

Step 5: Architecture Overview

This project uses Terraform to provision AWS infrastructure. The diagram below illustrates the flow:

## Methods / Notes:

S3 Bucket: Stores CV files in PDF, Word, or other formats.

CloudFront Distribution: Delivers your CV globally with low latency.

Terraform: Automates provisioning and deployment.

Users: Access your CV via the CloudFront URL.

## Step 6: Contributing

Contributions, issues, and feature requests are welcome!
You can fork this repository and submit pull requests.

## Methods / Notes:

Always create a new branch for your changes.

Test your changes locally before submitting a PR.

Follow proper commit message conventions.

## Step 7: License

This project is licensed under the MIT License
