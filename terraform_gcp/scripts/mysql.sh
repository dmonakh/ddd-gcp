#!/bin/bash


sudo apt-get install apt-transport-https ca-certificates gnupg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt-get install google-cloud-sdk-gke-gcloud-auth-plugin
gcloud container clusters get-credentials mondyspout-clusterk8s --region=us-central1 --project=$ARM_PROJECT_ID

kubectl exec -i service/mysql -- mysql -u root -p1234 -e "\
    CREATE DATABASE IF NOT EXISTS ddd_test; \
    USE ddd_test; \
    CREATE TABLE IF NOT EXISTS test_table (id INT PRIMARY KEY, name VARCHAR(50)); \
    INSERT IGNORE INTO test_table (id, name) VALUES (1, 'Mondy'), (2, 'Dude'), (3, 'GCP'); \
    Show databases;"


