cat <<EOF >02_infra.yaml
imports:
- path: 02_lb_int.py 
resources: 
- name: cluster-lb-int
  type: 02_lb_int.py
  properties:
    cluster_network: '${CLUSTER_NETWORK}'
    control_subnet: '${CONTROL_SUBNET}' 
    infra_id: '${INFRA_ID}'
    region: '${REGION}'
    zones: 
    - '${ZONE_0}'
    - '${ZONE_1}'
    - '${ZONE_2}'
EOF

gcloud deployment-manager deployments create ${INFRA_ID}-infra --config 02_infra.yaml


