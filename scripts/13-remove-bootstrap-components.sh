gcloud compute backend-services remove-backend ${INFRA_ID}-api-internal-backend-service --region=${REGION} --instance-group=${INFRA_ID}-bootstrap-instance-group --instance-group-zone=${ZONE_0}
gsutil rm gs://${INFRA_ID}-bootstrap-ignition/bootstrap.ign
gsutil rb gs://${INFRA_ID}-bootstrap-ignition
gcloud deployment-manager deployments delete ${INFRA_ID}-bootstrap
