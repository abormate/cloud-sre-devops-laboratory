# ----------------------------------------------- #
#
# -- Kode Kloud Engineer -- Kubernetes -- Replicaset
#
# ----------------------------------------------- #

: '
The Nautilus DevOps team is going to deploy some applications on kubernetes cluster as 
they are planning to migrate some of their existing applications there. Recently one of 
the team members has been assigned a task to write a template as per details mentioned 
below:

Create a ReplicaSet using nginx image with latest tag only and remember to mention 
tag i.e nginx:latest and name it as nginx-replicaset.


Labels app should be nginx_app, labels type should be front-end.


The container should be named as nginx-container; also make sure replicas counts are 4.


Note: The kubectl utility on jump_host has been configured to work with the kubernetes 
cluster.

'

: '
Context necessary --

The Nautilus DevOps team is going to deploy some applications on kubernetes cluster as 
they are planning to migrate some of their existing applications there. Recently one 
of the team members has been assigned a task to write a template as per details 
mentioned below:

>> 1. Create a ReplicaSet using httpd image with latest tag only and remember to mention 
tag i.e httpd:latest and name it as httpd-replicaset.

>> 2. Labels app should be httpd_app, labels type should be front-end.

>> 3. The container should be named as httpd-container; also make sure replicas counts 
are 4.


Note: 

The kubectl utility on jump_host has been configured to work with the kubernetes 
cluster.

'

kubectl create deployment httpd-replicaset --image=httpd:latest --replicates=4 --dry-run=client -o yaml

kubectl create deployment httpd-replicaset --image=httpd:latest --replicates=4 --dry-run=client -o yaml > replicaset.yaml

: '
apiVersion: apps/v1
kind: Deployment
metadata:
  creationTimestamp: null
  labels:
    app: nginx-replicaset
  name: nginx-replicaset
spec:
  replicas: 4
  selector:
    matchLabels:
      app: nginx-replicaset
  strategy: {}
  template:
    metadata:
      creationTimestamp: null
      labels:
        app: nginx-replicaset
    spec:
      containers:
      - image: nginx:latest
        name: nginx
        resources: {}
status: {}

'

vi replicaset.yaml

# modify property --> from replicaset template off kubernetes.io

kubectl create -f replicaset.yaml

kubectl get replicaset

kubectl describe replicaset httpd-replicaset