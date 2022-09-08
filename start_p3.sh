#!/bin/bash

while read id; do
aws ec2 start-instances --instance-ids $id
done < ~/SerFlex/scripts/aws/static/p3_on_demand_id.txt
