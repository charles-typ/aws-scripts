#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Launching 1 instance"
    aws ec2 run-instances --image-id ami-09e1175566504809c --instance-type p3.2xlarge --subnet-id subnet-b5f0f8ef --security-group-ids sg-0bc3b35e73c016b8a --key-name hong --block-device-mappings file://mapping.json
  else
    echo "Launching $1 instances"
    for i in $(seq "$1")
    do
      aws ec2 run-instances --image-id ami-09e1175566504809c --instance-type p3.2xlarge --subnet-id subnet-b5f0f8ef --security-group-ids sg-0bc3b35e73c016b8a --key-name hong --block-device-mappings file://mapping.json
    done
fi

./get_p3_ip.sh
./get_p3_id.sh
