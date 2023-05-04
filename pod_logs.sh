#!/bin/bash

pods_list=$(kubectl get pods --all-namespaces -o custom-columns=NAMESPACE:.metadata.namespace,NAME:.metadata.name | tail -n +2 | awk '{print $0 "\t"}' | nl -w 3 -s ". ")

echo "$pods_list"

echo "Enter the index of the pod you want to execute: "
read index

pod_namespace=$(echo "$pods_list" | grep "^ *$index\." | awk '{print $2}')
pod_name=$(echo "$pods_list" | grep "^ *$index\." | awk '{print $3}')

echo $pod_namespace
echo $pod_name

kubectl logs -f $pod_name -n $pod_namespace








