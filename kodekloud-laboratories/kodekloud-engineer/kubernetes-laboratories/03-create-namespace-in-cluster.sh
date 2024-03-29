# ------------------------------------------------ #
#
# -- Create Namespace -- Kubernetes -- 
#
# ------------------------------------------------ #

: '
The Nautilus DevOps team is planning to deploy some micro services on Kubernetes 
platform. The team has already set up a Kubernetes cluster and now they want set up 
some namespaces, deployments etc. Based on the current requirements, the team has 
shared some details as below:

Create a namespace named dev and create a POD under it; name the pod dev-nginx-pod and 
use nginx image with latest tag only and remember to mention tag i.e nginx:latest.

Note: The kubectl utility on jump_host has been configured to work with the kubernetes 
cluster.

'

kubectl create namespace dev

kubectl get namespaces

kubectl run dev-nginx-pod -n dev --image=nginx:latest

kubectl get pods -n dev

kubectl describe pod dev-nginx-pod -n dev

