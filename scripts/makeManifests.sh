export PATH=/usr/local/bin:${PATH}
export GOOGLE_APPLICATION_CREDENTIALS=/home/redhat/ship-over/service-account-key.json
openshift-install create manifests --dir install_dir/

