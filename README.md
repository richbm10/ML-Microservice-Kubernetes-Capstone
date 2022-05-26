# ML Microservice Udacity Capstone Project

[GitHub Repository](https://github.com/richbm10/ML-Microservice-Kubernetes-Capstone)

## Project Overview

This project is a Machine Learning Microservice API, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

### Cluster Deployment

The deployment of the AWS EKS cluster was made by using the [eksctl cli](https://docs.aws.amazon.com/eks/latest/userguide/getting-started-eksctl.html).

First to implement the required VPC for our cluster a default Cloudformation template offered by AWS was used. So this was achieved by just going to Cloudformation and create the template using this URL: https://amazon-eks.s3.us-west-2.amazonaws.com/cloudformation/2020-06-10/amazon-eks-vpc-private-subnets.yaml.

The cluster for this project was deployed by using [this](https://github.com/richbm10/ML-Microservice-Kubernetes-Capstone/tree/main/ansible) Ansible playbook to install the required dependencies and create the cluster
using the eksctl create command running the [run_cluster](https://github.com/richbm10/ML-Microservice-Kubernetes-Capstone/blob/main/run_cluster.sh) script.

The cluster creation uses a cluster yml where we declare the required VPC id and subnets ids that were created thanks to the default VPC template provided by AWS.

## Setup the Environment

- Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv.

```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host.
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```

- Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone: `python app.py`
2. Run in Docker: `./run_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`

### Kubernetes Steps

- Setup and Configure Docker locally
- Setup and Configure Kubernetes locally
- Create Flask app in Container
- Run via kubectl
