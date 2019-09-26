#!/bin/bash

INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')
INGRESS_HOST=$(minikube ip)

while true
do

number=$RANDOM
echo -n "$number => "
result=$(curl -s http://$INGRESS_HOST:$INGRESS_PORT/api/fizzbuzz?number=$number)
echo $result
sleep 0.2s

done
