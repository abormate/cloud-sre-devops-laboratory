# -------------------------------------- #
#
# -- Update Deployments -- Kubernetes --
#
# -------------------------------------- #

: '
There is an application deployed on Kubernetes cluster. Recently, 
the Nautilus application development team developed a new version 
of the application that needs to be deployed now. As per new 
updates some new changes need to be made in this existing setup. 

So update the deployment and service as per details mentioned below:

We already have a deployment named nginx-deployment and service 
named nginx-service. Some changes need to be made in this 
deployment and service, make sure not to delete the deployment and 
service.

1.) Change the service nodeport from 30008 to 32165

2.) Change the replicas count from 1 to 5

3.) Change the image from nginx:1.17 to nginx:latest

'

kubectl get deploy

kubectl edit deployment nginx-deployment

# modify to proper values the nginx image and replica count

kubectl get service

kubectl edit svc nginx-service

# or

kubectl edit service nginx-service

# Update and fill the suggested value for the port number

kubectl get deployments

kubectl describe deployments nginx-deployment

kubectl get service


