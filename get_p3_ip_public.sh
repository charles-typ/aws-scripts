#!/bin/bash

aws ec2 describe-instances --filters "Name=instance-type,Values=p3.2xlarge" "Name=instance-state-name,Values=running" --query "Reservations[*].Instances[*].PublicIpAddress" --output=text | xargs -n 1 | tee static/p3_public_ip.txt
