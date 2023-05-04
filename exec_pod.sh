#!/bin/bash

pods_list=$(kubectl get pods -o=name | awk '{print $0 "\t"}' | nl -w 3 -s ". ")

echo "$pods_list"

echo "Enter the index of the pod you want to execute: "
read index

pod_name=$(echo "$pods_list" | grep "^ *$index\." | awk '{print $2}')

kubectl exec -it $pod_name -- bash








