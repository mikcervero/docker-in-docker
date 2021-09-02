#!/bin/bash
echo Creat ConfigMap
kubectl apply -f docker-configmap.yaml
echo Create Secret
kubectl apply -f docker-secret.yaml
echo Apply Docker Deployment
kubectl apply -f deployment.yaml
sleep 10;
echo Upload Jar File
kubectl cp x.jar docker:/tmp/x.jar
echo Upload DockerFile
kubectl cp Dockerfile docker:/tmp/Dockerfile



#docker push registry-host:port/user/image:tag




