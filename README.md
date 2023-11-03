<p align="center">
<img src="https://github.com/kura-labs-org/kuralabs_deployment_1/blob/main/Kuralogo.png">
</p>
<h1 align="center">C4_deployment-7<h1> 

# Purpose

This project demonstrated the implementation of infrastructure as code to deploy a CI/CD pipeline management infrastructure that facilitated a multi-region banking application deployment.

AWS cloud infrastructure is deployed using Terraform, setting up a Jenkins management server and Jenkins agent IaC server serving as the CI/CD management infrastructure. The management infrastructure leverages Terraform to deploy the bank web application servers in multiple regions running Python Flask with a MySQL RDS managed database.

## Deployment Files:

The following files are needed to run this deployment:

- `app.py` The main python application file
- `database.py` Python file to create application database
- `load_data.py` Python file to load data into into the database
- `test_app.py` Test functions used to test application functionality
- `requirements.txt` Required packages for python application
- `jenkins_server.sh` Bash script to install and run Jenkins
- `Jenkinsfile` Configuration file used by Jenkins to run a pipeline
- `README.md` README documentation
- `static/` Folder housing CSS files
- `templates/` Folder housing HTML templates
- `initTerraform/` Folder housing terraform files
- `initTerraform/main.tf` Terraform file to deploy AWS infrastructure
- `initTerraform/app_server_setup.sh` Bash script to install required packages for the app server

## `Steps`

1. TBA<br><br>

2. TBA<br><br>

3. TBA<br><br>


## `System Diagram`

CI/CD Pipeline Architecture [Link](https://github.com/kaedmond24/bank_app_deployment_6/blob/main/c4_deployment_7.png)

## `Issues`

`Error`: TBA

`Solution`: TBA


## `Optimization`

TBA<br><br>
