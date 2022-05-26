# Install eksctl
ansible-playbook ./ansible/main.yml

# Create cluster
eksctl create cluster -f cluster.yml

# List cluster
eksctl get cluster --name=MLMicroservice --region=us-east-1