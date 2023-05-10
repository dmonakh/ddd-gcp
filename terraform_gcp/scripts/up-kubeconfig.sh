#!/bin/bash  

# gcloud components install gke-gcloud-auth-plugin
# gcloud components update
# sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
gcloud beta container clusters get-credentials mondyspout-clusterk8s --region=us-central1 --project=$ARM_PROJECT_ID
mv ~/.kube/config terraform_gcp/kubeconfig
