# assignment2vcc
Assignment 2: Use AWS/GCP/Any Other Public Cloud Service to Create a VM to Leverage Auto Scaling and Security

# GCP VM Auto-Scaling and Security Implementation

## Project Overview
This project demonstrates deployment of a scalable and secure VM infrastructure on Google Cloud Platform using:

- Compute Engine VM
- Instance Template
- Managed Instance Group (MIG)
- CPU-based Auto Scaling
- Health Checks & Autohealing
- IAM Role-Based Access Control
- Firewall Security Rules

---

## Architecture

               Users / Internet
                        |
                HTTP / HTTPS
                        |
            -------------------------
            | Managed Instance Group |
            |  Auto Scaling (CPU)    |
            -------------------------
               /        |        \
              /         |         \
        VM Instance  VM Instance  VM Instance
            (Auto-scaled Compute Engine VMs)
                     |
              VPC Network
                     |
        ----------------------------
        | Firewall Rules            |
        | IAM Role-Based Access     |
        ----------------------------

   Instance Template  --->  Managed Instance Group
   Health Check       --->  Managed Instance Group

---

## Implementation Steps

### 1. VM Creation
A Compute Engine VM was created with Ubuntu Linux and Nginx web server.

### 2. Instance Template
An instance template was created from the VM configuration to act as a blueprint for scaling.

### 3. Managed Instance Group
A managed instance group was configured using the template.

### 4. Auto Scaling
Autoscaling policy:
- Min instances: 1
- Max instances: 5
- CPU target: 60%

### 5. Security
- IAM roles configured for access control
- Firewall rules allowing HTTP, HTTPS, SSH, and health checks
- Implicit deny for all other traffic

### 6. Health Checks
HTTP health check configured for autohealing.

---

## Auto Scaling Demo

CPU load was generated using:

```bash
stress --cpu 4 --timeout 300

## You Tube video demo Link

https://www.youtube.com/watch?v=K6gOlRFhNrI
