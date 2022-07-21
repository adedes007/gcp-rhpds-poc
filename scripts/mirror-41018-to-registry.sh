export PATH=/usr/local/bin:${PATH}
echo $PATH

export OCP_RELEASE=4.10.18
export PRODUCT_REPO='openshift-release-dev'
export LOCAL_SECRET_JSON=/home/redhat/ship-over/pull-secret-2.json
export RELEASE_NAME="ocp-release"
export ARCHITECTURE=x86_64
export REMOVABLE_MEDIA_PATH=/home/redhat/41018

export LOCAL_REGISTRY='ocp-bastion:5000' 
export LOCAL_REPOSITORY=ocp4/openshift4

GODEBUG=x509ignoreCN=0 oc image mirror \
--from-dir=/home/redhat/41018 'file://openshift/release:4.10.18-x86_64*' \
${LOCAL_REGISTRY}/${LOCAL_REPOSITORY}

