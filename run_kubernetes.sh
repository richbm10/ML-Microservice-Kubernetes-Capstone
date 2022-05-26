#!/usr/bin/env bash

# Step 2
# Run the ECR container image in EKS
kubectl apply -f deployment.yml

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Run kubernetes service so the microservice can be reachable
kubectl apply -f service.yml