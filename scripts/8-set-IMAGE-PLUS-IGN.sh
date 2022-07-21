export CLUSTER_IMAGE=(`gcloud compute images describe ${INFRA_ID}-rhcos-image --format json | jq -r .selfLink`)
export BOOTSTRAP_IGN=`gsutil signurl -d 1h ship-over/service-account-key.json gs://${INFRA_ID}-bootstrap-ignition/bootstrap.ign | grep "^gs:" | awk '{print $5}'`
echo CLUSTER_IMAGE=$CLUSTER_IMAGE
echo BOOTSTRAP_IGN=$BOOTSTRAP_IGN
