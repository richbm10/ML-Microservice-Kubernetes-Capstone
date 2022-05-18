ansible-playbook ./ansible/main.yml

eksctl create cluster --name=MLMicroservice --region=us-east-1 --nodes=1 --zones us-east-1a,us-east-1b,us-east-1c,us-east-1d,us-east-1f

eksctl get cluster --name=MLMicroservice --region=us-east-1