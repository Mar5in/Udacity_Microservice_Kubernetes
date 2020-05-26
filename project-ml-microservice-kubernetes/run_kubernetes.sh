#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub ??????????????

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=mar5in/udacity_prediction_model

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-prediction-model --image=$dockerpath --port=80

# Step 3:
# List kubernetes pods
kubectl get pods -A

# Step 4:
# Forward the container port to a host
# kubectl expose pod udacity-prediction-model --port=8000 --target-port=80
kubectl port-forward pod/udacity-prediction-model 8000:80