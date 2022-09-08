#!/bin/bash

aws ec2 describe-instances --filters "Name=instance-type,Values=m4.16xlarge" "Name=instance-state-name,Values=running" --query "Reservations[*].Instances[*].PrivateIpAddress" --output=text | xargs -n 1 | tee static/m4_ip.txt
