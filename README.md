# Heraion

Heraion is the infrastructure and architectural definition for the KRoboLander 
project. It contains the design and implementation of the infrastructure 
required to develop a reinforcement learning agent which can aid efficient 
landing of rocket boosters.

## Developer getting started

This project is a terraform project. You will also require a credentials.json 
file which contains the credentials if you're looking to build infrastructure 
from your local machine.

### Batch Job architecture

There are a number of batch jobs that need to be run. In order to do this, we
need to bring up some infrastructure which will facilitate batch job 
orchestration. Below is a high level diagram on how batch job infrastructure
will look.

![alt text](https://raw.githubusercontent.com/codeBehindMe/heraion/master/batchjobarchitecture.png)