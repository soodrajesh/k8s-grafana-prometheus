#!/bin/bash

# Create the necessary files in the current directory
touch .gitlab-ci.yml
touch Dockerfile
touch requirements.txt
touch app.py

# Create Helm chart structure for the sample app
mkdir -p helm/templates

# Create the necessary files for the Helm chart
touch helm/Chart.yaml
touch helm/values.yaml
touch helm/templates/deployment.yaml
touch helm/templates/service.yaml
touch helm/templates/_helpers.tpl

# Create directories for external Helm charts
mkdir -p charts/prometheus
mkdir -p charts/grafana

echo "Directory structure and files created successfully in $(pwd)!"
