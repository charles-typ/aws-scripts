#!/bin/bash

aws ec2 describe-instances --filters "Name=instance-type,Values=p3.2xlarge"  --query "Reservations[*].Instances[*].InstanceId" --output=text | xargs -n 1 | tee static/p3_on_demand_id.txt
