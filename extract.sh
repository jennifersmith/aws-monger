mkdir -p rumours
aws ec2 describe-instances | jq "[.Reservations[].Instances[] | {name: .InstanceId, launch_time: .LaunchTime}]" > rumours/instances.json
