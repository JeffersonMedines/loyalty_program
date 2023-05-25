# date
data=$(date '+%Y-%m-%dT%H:%M:%S')

# path
path='/home/jeffsmedines/repos/loyalty_program'
path_ec2='/home/ubuntu/loyalty_program'

papermill $path_ec2/src/models/v09_loyalty_program_model_deployment_aws.ipynb $path_ec2/reports/logs/v09_loyalty_program_model_deployment_aws_$data.ipynb