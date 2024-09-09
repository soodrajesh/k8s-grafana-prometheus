Kubernetes Deployment with Docker, Amazon ECR, and GitHub Actions

This repository automates the deployment of a sample application to a Kubernetes cluster using Docker images stored in Amazon Elastic Container Registry (ECR). The process is streamlined through a GitHub Actions pipeline.
Prerequisites

Before you start, ensure you have:

    Docker installed and configured.
    AWS CLI with access to your AWS account.
    kubectl installed and set up for your Kubernetes cluster.
    Amazon ECR repository for storing Docker images.
    GitHub repository for your application code.

Steps
1. Build and Push Docker Image Locally (Optional)

Though the pipeline automates this process, you can build and push the Docker image locally:

    Build Docker Image:

    bash

docker build -t your-image-name:your-tag .

Tag Docker Image:

bash

docker tag your-image-name:your-tag ECR-repo-url/my-sample-app:your-tag

Push Docker Image to ECR:

bash

    docker push ECR-repo-url/my-sample-app:your-tag

2. GitHub Actions Pipeline Setup

Automate the Docker build, push, and Kubernetes deployment with GitHub Actions.

    Create GitHub Secrets:

    Add the following secrets to your repository:
        AWS_ACCESS_KEY_ID
        AWS_SECRET_ACCESS_KEY
        AWS_REGION
        ECR_REPOSITORY
        EKS_CLUSTERNAME

    GitHub Actions Workflow:

    Create a .github/workflows/deploy.yml file in your repository. The workflow will:
        Build and push the Docker image to ECR.
        Update the Kubernetes deployment with the new image.

3. Deployment Verification

After a successful pipeline run, verify the deployment by checking the status of your pods:

bash

kubectl get pods --namespace default

4. Troubleshooting

If deployment issues arise, check the GitHub Actions logs and review pod logs:

bash

kubectl logs <pod-name> --namespace default

5. Cleanup

To remove the deployment:

bash

kubectl delete deployment sample-app --namespace default

