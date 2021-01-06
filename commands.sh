# create an s3 bucket
aws s3 mb s3://guzelcihad-sam

# package cloudformation
aws cloudformation package --s3-bucket guzelcihad-sam --template-file template.yaml --output-template-file gen/template-generated.yaml

# deploy
aws cloudformation deploy --template-file gen\template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY-IAM