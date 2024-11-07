az group create --location westeurope --name multi-juicer# Setting up the Multi-Juicer Kubernetes Cluster

## Configurations
- You might want to change the max allowed instances in the

## 1. Create a resource group

Before we can do anything we need a resource group
`az group create --location westeurope --name multi-juicer`

## 2. Create the AKS cluster
`az aks create --resource-group multi-juicer --generate-ssh-keys --name juicy-k8s --enable-cluster-autoscaler --min-count 1 --max-count 8 --node-count 2`

## 3. Authenticate and fetch cluster credentials
`az aks get-credentials --resource-group multi-juicer --name juicy-k8s`

## 4. Verify the cluster context
`kubectl config current-context`

This should print: 
`juicy-k8s`

## 5. Install Multi-Juicer helm chart
`helm install -f juice-config.yaml multi-juicer oci://ghcr.io/juice-shop/multi-juicer/helm/multi-juicer`

## 6. Verify installation
`kubectl get pods` 

you should see `juice-balancer` and `progress-watchdog`

## 7. Local test
`kubectl port-forward service/juice-balancer 3000:3000`

## 8.  Obtain admin password
`kubectl get secrets juice-balancer-secret -o=jsonpath='{.data.adminPassword}' | base64 --decode`

## 9. Create the loadbalancer service
`kubectl create -f loadbalancer.yaml`

## 10. Find the public IP address
`kubectl get services`

## 11. --WHEN DONE-- Delete the group
`az group delete --name multi-juicer`

