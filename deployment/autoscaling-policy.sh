gcloud compute instance-groups managed set-autoscaling instance-group-4 \
  --max-num-replicas=5 \
  --min-num-replicas=1 \
  --target-cpu-utilization=0.6 \
  --cool-down-period=60 \
  --zone=asia-south1-a
