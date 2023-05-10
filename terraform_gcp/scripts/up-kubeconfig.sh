#!/bin/bash  

# gcloud components install gke-gcloud-auth-plugin
# gcloud components update
# sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
# curl https://sdk.cloud.google.com | bash
# source ~/.bashrc
# gcloud init
# gcloud components install kubectl

sudo apt-get install apt-transport-https ca-certificates gnupg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get update && sudo apt-get install google-cloud-cli
gcloud container clusters get-credentials mondyspout-clusterk8s --region=us-central1 --project=$ARM_PROJECT_ID
# mv ~/.kube/config terraform_gcp/kubeconfig
# ls terraform_gcp