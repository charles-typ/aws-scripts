#!/bin/bash

aws ec2 run-instances --image-id ami-04f3661e2179799bc --instance-type m4.16xlarge --subnet-id subnet-b5f0f8ef --security-group-ids sg-0bc3b35e73c016b8a --key-name hong --block-device-mappings file://mapping.json
