#!/bin/bash

while read id; do
aws ec2 stop-instances --instance-ids $id
done < ~/SerFlex/scripts/aws/static/m4_id.txt
