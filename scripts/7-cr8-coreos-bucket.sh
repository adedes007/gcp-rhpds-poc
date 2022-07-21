gsutil mb gs://rhcos41016bucket/
gsutil cp  ship-over/rhcos-4.10.16-x86_64-gcp.x86_64.tar.gz gs://rhcos41016bucket/
export IMAGE_SOURCE=gs://rhcos41016bucket/rhcos-4.10.16-x86_64-gcp.x86_64.tar.gz
gcloud compute images create "${INFRA_ID}-rhcos-image" --source-uri="${IMAGE_SOURCE}"
