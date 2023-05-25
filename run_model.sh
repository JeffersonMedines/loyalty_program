# date
data=$(date '+%Y-%m-%dT%H:%M:%S')

# path
path='/home/jeffsmedines/repos/loyalty_program'

papermill /src/models/v09_loyalty_program_model_deployment_aws.ipynb /reports/logs/v09_loyalty_program_model_deployment_aws_$data.ipynb