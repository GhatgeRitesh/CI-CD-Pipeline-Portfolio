#!/bin/sh

set -e

echo "Creating CI Environment \n"

# 1. namespace and  roles ,

namespace=$(yq '.metadata.name' namespace-ci.yaml)


echo "Creating namespace with name: $namespace \n"

kubectl apply -f namespace.yaml

echo "namespace created successfully \n"

echo "Applying namespace roles \n"

kubectl apply -f role-ci.yaml

echo "Applied successfully \n"



ApplyResources() {

  echo "Applying Resources : $1 \n"
  
  kubectl apply -f $2
 
  echo "Applied Resource $2 successfully"

}

path=("./Workspace/" "./rbac" "./secrets" "./serviceAccounts" "./")
