if [ -f transaction.yaml ]; then rm transaction.yaml; fi
gcloud dns record-sets transaction start --zone ocp-private-zone
gcloud dns record-sets transaction add ${CLUSTER_IP} --name api.${CLUSTER_NAME}.${BASE_DOMAIN}. --ttl 60 --type A --zone ocp-private-zone
gcloud dns record-sets transaction add ${CLUSTER_IP} --name api-int.${CLUSTER_NAME}.${BASE_DOMAIN}. --ttl 60 --type A --zone ocp-private-zone
gcloud dns record-sets transaction execute --zone ocp-private-zone
