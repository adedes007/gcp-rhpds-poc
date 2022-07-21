
# Openshift 4.10.18 GCP Disconnected Installation on RHPDS

## Setup RHPDS Env

- [RHPDS Setup](#RHPDS)

Provision an RHPDS GCP Blank Environment using your RedHat SSO account. \
Choose "GCP Blank Open Environment". \
It has all the GCP billing, and quotas that you will need for your OCP 4.10.x cluster environment which consists of 3 masters and 3 2 worker nodes.

<img src="./images/rhpds-blank-env.png" alt="rhpds-blank-env" align="center" /> 
</br></br>

Follow the steps to the end and wait about 10-15 minutes until your environment is ready.



    

## Infrastructure Scripts 
***
The following directories contain the scripts in a numeric order to configure components. \
    You need to install the gcloud 

### [install_dir](#1-install_dir)

Contains the install-config.yaml which you will have to modify for your environment.

### [scripts](#2-scripts)
Contains all the scripts in a numerical order that I used to create infrastructure and environment.

### [ship-over](#3-ship-over)
Contains all the binary software that I downloaded on my laptop, made a tar and FTPed over to the bastion host on GCP.
    This is what I added. 

> mkdir -p ~/GCP/ship-over \
wget https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/butane/latest/butane \
wget https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/4.10.18/openshift-client-linux-4.10.18.tar.gz \
wget https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/4.10.18/openshift-install-linux-4.10.18.tar.gz \
wget https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/4.10.18/opm-linux-4.10.18.tar.gz \
wget https://mirror.openshift.com/pub/openshift-v4/x86_64/clients/ocp/4.10.18/oc-mirror.tar.gz \
wget https://mirror.openshift.com/pub/openshift-v4/x86_64/dependencies/rhcos/4.10/4.10.16/rhcos-4.10.16-x86_64-gcp.x86_64.tar.gz  </br>



## Architecture

The following diagram depicts the OCP GCP architecture for the installation. \
All OCP nodes are COMPLETELY disconnected as well as the loadbalancers. \
The **ONLY** connectivity is from my laptop to the ocp-bastion host and **NOT**
the other way around.

<img src="./images/architect.jpg" alt="architecture" /> </br>


## GCP Screenshots </br>

### [OCP Bastion Host](#ocp)</br>
___
<img src="./images/ocp-bastion.png" alt="ocpb" />


### [VPC](#vpc)</br>
---
<img src="./images/ig-1.png" alt="ig1" /> </br>


### [Subnets](#sub)</br>
___
<img src="./images/worker-subnet.png" alt="ws" />
<img src="./images/master-subnet.png" alt="ms" />


### [CloudDNS](#cdns)</br>
___
<img src="./images/cloud-dns.png" alt="cdns" />
<img src="./images/cloud-dns-1.png" alt="cdns1" />
<img src="./images/cloud-dns-2.png" alt="cdns2" />


### [Deployments](#dp)</br>
___
<img src="./images/deployments.png" alt="dp" />
<img src="./images/deployments-1.png" alt="dp1" />
<img src="./images/deployments-2.png" alt="dp2" />
<img src="./images/deployments-3.png" alt="dp3" />



### [VM Instances and Instance Groups](#vmig)</br>
___
<img src="./images/vm-instances.png" alt="vmi" />
<img src="./images/instance-groups.png" alt="igroups" />

<img src="./images/ig-1.png" alt="ig1" />
<img src="./images/ig-2.png" alt="ig2" />
<img src="./images/ig-3.png" alt="ig3" />
<img src="./images/ig-4.png" alt="ig4" />


### [IP Addresses](#ipa)</br>
___
<img src="./images/ip-addresses.png" alt="ipa" />


### [Firewall Rules](#fr)</br>
___
<img src="./images/firewall-rules.png" alt="fr" />
<img src="./images/routing.png" alt="rt" />
<img src="./images/routing-1.png" alt="rt1" />

### [Cluster](#cl)</br>
___
<img src="./images/health-1.png" alt="ht1" />
<img src="./images/health-2.png" alt="ht2" />
<img src="./images/health-3.png" alt="ht3" />
<img src="./images/health-4.png" alt="ht4" />














