ansible-playbook ./ansible/main.yml

eksctl create cluster --name=MLMicroservice --region=us-east-1 --nodes=1

eksctl get cluster --name=MLMicroservice --region=us-east-1