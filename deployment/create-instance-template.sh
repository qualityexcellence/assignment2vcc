gcloud compute instance-templates create autoscale-template \
  --machine-type=e2-medium \
  --image-family=ubuntu-2204-lts \
  --image-project=ubuntu-os-cloud \
  --metadata-from-file startup-script=startup-script/install-nginx.sh
