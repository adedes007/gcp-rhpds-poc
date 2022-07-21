export MASTER_SERVICE_ACCOUNT=(`gcloud iam service-accounts list --filter "email~^ocp4-sa@${PROJECT_NAME}." --format json | jq -r '.[0].email'`)
export WORKER_SERVICE_ACCOUNT=(`gcloud iam service-accounts list --filter "email~^ocp4-sa@${PROJECT_NAME}." --format json | jq -r '.[0].email'`)
echo MASTER_SERVICE_ACCOUNT=$MASTER_SERVICE_ACCOUNT
echo WORKER_SERVICE_ACCOUNT=$WORKER_SERVICE_ACCOUNT
