#!/bin/bash

set -e

if ! az account show > /dev/null 2>&1; then
  echo "Please log in to the Azure CLI using 'az login'"
  exit 1
fi

RESOURCE_GROUP="multi-juicer"
CLUSTER_NAME="juicy-k8s"
LOCATION="westeurope"
MIN_NODES=1
MAX_NODES=8
NODES=2

echo "Creating resource group..."
az group create --location $LOCATION --name $RESOURCE_GROUP


echo "Creating AKS cluster..."
az aks create --resource-group $RESOURCE_GROUP \
--name $CLUSTER_NAME \
--min-count $MIN_NODES \
--max-count $MAX_NODES \
--node-count $NODES \
--generate-ssh-keys \
--enable-cluster-autoscaler


echo "Getting credentials"
az aks get-credentials --resource-group $RESOURCE_GROUP --name $CLUSTER_NAME

CLUSTER_CONTEXT=$(kubectl config current-context)
if [[ "$CLUSTER_CONTEXT" != "juicy-k8s" ]]; then
  echo "Issue getting the cluster context... Exiting..."
  exit 1
fi


echo "Installing MultiJuicer Helm"
helm install -f juice-config.yaml $RESOURCE_GROUP oci://ghcr.io/juice-shop/multi-juicer/helm/multi-juicer


echo "Creating the loadbalancer service"
kubectl create -f loadbalancer.yaml


ADMIN_PASS=$(kubectl get secrets juice-balancer-secret -o=jsonpath='{.data.adminPassword}' | base64 --decode)

echo "Waiting for the service to be ready..."
while true; do
    PUBLIC_IP=$(kubectl get service juice-loadbalancer -o=jsonpath='{.status.loadBalancer.ingress[0].ip}')
    if [[ -n "$PUBLIC_IP" ]]; then
        echo "Public IP is: $PUBLIC_IP"
        echo "Admin login: admin:$ADMIN_PASS"
        break
    fi
    echo "Public IP not yet assigned. Checking again in 10 seconds..."
    sleep 10
done
while [[ $(kubectl get svc juice-balancer -o=jsonpath='{.status.loadBalancer.ingress[0].ip}') == "" ]]; do
  sleep 5
done

echo "When you're done you can remove the group with all AKS and all nodes by using the command `az group delete -name $RESOURCE_GROUP`"
sleep 1 
exit 1
