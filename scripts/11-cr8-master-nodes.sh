export MASTER_IGNITION=`cat install_dir/master.ign`

cat <<EOF >05_control_plane.yaml
imports:
- path: 05_control_plane.py

resources:
- name: cluster-control-plane
  type: 05_control_plane.py
  properties:
    infra_id: '${INFRA_ID}' 
    zones: 
    - '${ZONE_0}'
    - '${ZONE_1}'
    - '${ZONE_2}'

    control_subnet: '${CONTROL_SUBNET}' 
    image: '${CLUSTER_IMAGE}' 
    machine_type: 'e2-standard-4' 
    root_volume_size: '100'
    service_account_email: '${MASTER_SERVICE_ACCOUNT}' 

    ignition: '${MASTER_IGNITION}' 
EOF

gcloud deployment-manager deployments create ${INFRA_ID}-control-plane --config 05_control_plane.yaml
