ECR_HTOS="385382614844.dkr.ecr.us-east-1.amazonaws.com"
REGION="us-east-1"
aws ecr --region=$REGION create-repository --repository-name ks-installer

docker build -f ./Dockerfile -t $ECR_HTOS/ks-installer:v2.1.1-prod-mysql .
docker push $ECR_HTOS/ks-installer:v2.1.1-prod-mysql