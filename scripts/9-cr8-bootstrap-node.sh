cat <<EOF >04_bootstrap.yaml
imports:
- path: 04_bootstrap.py

resources:
- name: cluster-bootstrap
  type: 04_bootstrap.py
  properties:
    infra_id: '${INFRA_ID}' 
    region: '${REGION}' 
    zone: '${ZONE_0}' 

    cluster_network: '${CLUSTER_NETWORK}' 
    control_subnet: '${CONTROL_SUBNET}' 
    image: '${CLUSTER_IMAGE}' 
    machine_type: 'e2-standard-2' 
    root_volume_size: '50' 

    bootstrap_ign: '${BOOTSTRAP_IGN}' 
EOF

gcloud deployment-manager deployments create ${INFRA_ID}-bootstrap --config 04_bootstrap.yaml
