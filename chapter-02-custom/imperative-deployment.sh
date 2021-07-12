#!/bin/sh
kubectl create deployment nginx-imperative --image=nginx:latest --namespace gitops   #A
kubectl scale deployment/nginx-imperative --replicas 3 --namespace gitops            #B
kubectl annotate deployment/nginx-imperative environment=prod --namespace gitops     #C
kubectl annotate deployment/nginx-imperative organization=sales --namespace gitops   #D
