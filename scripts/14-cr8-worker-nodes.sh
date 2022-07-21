export WORKER_IGNITION=`cat install_dir/worker.ign`

cat <<EOF >06_worker.yaml
imports:
- path: 06_worker.py

resources:
- name: 'worker-0' 
  type: 06_worker.py
  properties:
    infra_id: '${INFRA_ID}' 
    zone: '${ZONE_0}' 
    compute_subnet: '${COMPUTE_SUBNET}' 
    image: '${CLUSTER_IMAGE}' 
    machine_type: 'e2-standard-4' 
    root_volume_size: '100'
    service_account_email: '${WORKER_SERVICE_ACCOUNT}' 
    ignition: '${WORKER_IGNITION}' 
- name: 'worker-1'
  type: 06_worker.py
  properties:
    infra_id: '${INFRA_ID}' 
    zone: '${ZONE_1}' 
    compute_subnet: '${COMPUTE_SUBNET}' 
    image: '${CLUSTER_IMAGE}' 
    machine_type: 'e2-standard-4' 
    root_volume_size: '100'
    service_account_email: '${WORKER_SERVICE_ACCOUNT}' 
    ignition: '${WORKER_IGNITION}' 
EOF


gcloud deployment-manager deployments create ${INFRA_ID}-worker --config 06_worker.yaml
