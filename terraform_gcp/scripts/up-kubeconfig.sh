#!/bin/bash  

gcloud container clusters get-credentials mondyspout-clusterk8s --region=us-central1 --project=$ARM_PROJECT_ID
mv ~/.kube/config terraform_gcp/kubeconfig
