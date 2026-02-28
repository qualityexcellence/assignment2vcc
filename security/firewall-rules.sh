gcloud compute firewall-rules create allow-http \
  --allow tcp:80

gcloud compute firewall-rules create allow-https \
  --allow tcp:443

gcloud compute firewall-rules create allow-health-check \
  --allow tcp \
  --source-ranges=130.211.0.0/22,35.191.0.0/16
