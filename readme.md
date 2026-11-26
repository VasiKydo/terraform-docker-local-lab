# Terraform & Docker Local Lab

A simple hands-on practice repository demonstrating how to package a static web page into a custom Docker image and provision the container using Terraform.

## Project Structure
- `index.html` – Simple static HTML status page.
- `Dockerfile` – Uses the official `nginx:alpine` base image and copies `index.html` into it to create a custom image.
- `main.tf` – Terraform configuration using the Docker provider to build the image and run the container on port `8080`.

## How to Run 
0. Use the terminal on Visual Studio Code
1. `terraform init`
2. `terraform plan`
3. `terraform apply` (visit `http://localhost:8080` to verify)
4. `terraform destroy` (to clean up)