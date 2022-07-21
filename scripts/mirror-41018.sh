export PATH=/usr/local/bin:${PATH}
echo $PATH

export OCP_RELEASE=4.10.18
export LOCAL_REPOSITORY=ocp4/openshift4
export PRODUCT_REPO='openshift-release-dev'
export LOCAL_SECRET_JSON=/home/redhat/ship-over/pull-secret-2.json
export RELEASE_NAME="ocp-release"
export ARCHITECTURE=x86_64
export REMOVABLE_MEDIA_PATH=/home/redhat/41018

export LOCAL_REGISTRY='ocp-bastion.c.change-me.internal:5000' 

##############################################################
GODEBUG=x509ignoreCN=0 oc adm release mirror \
-a ${LOCAL_SECRET_JSON} \
--to-dir=${REMOVABLE_MEDIA_PATH} \
quay.io/${PRODUCT_REPO}/${RELEASE_NAME}:${OCP_RELEASE}-${ARCHITECTURE}

