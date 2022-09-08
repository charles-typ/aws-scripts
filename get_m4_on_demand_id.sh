#!/bin/bash

aws ec2 describe-instances --filters "Name=instance-type,Values=m4.16xlarge" --query "Reservations[*].Instances[*].InstanceId" --output=text | xargs -n 1 | tee static/m4_on_demand_id.txt
