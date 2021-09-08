#!/bin/bash
set -e

#Set and retrive your Bearer-Token and SSH-ID Key and set them below. See Git-repo for more....

#Set bearer token
TOKEN=''

#Set your SSH_KEY ID number 
SSH_ID=

#Set Node image
node_image="ubuntu-20-04-x64"

#Set Vpu size
node_size="s-1vcpu-1gb"

#Set Node 1 hostname and region
node1_hostname="node1.origintrail.com"
node1_region="sgp1"

#Set Node 2 hostname and region
node2_hostname="node2.origintrail.com"
node2_region="lon1"

#Set Node 3 hostname and region
node3_hostname="node3.origintrail.com"
node3_region="fra1"

#Set Node 4 hostname and region
node4_hostname="node4.origintrail.com"
node4_region="tor1"

#Set Node 5 hostname and region
node5_hostname="node5.origintrail.com"
node5_region="nyc3"





#Node 1 Deploy
echo "Deploying Node1 ......."

curl -X POST "https://api.digitalocean.com/v2/droplets" \
      -d'{"name":"'"$node1_hostname"'","region":"'"${node1_region}"'","size":"'"${node_size}"'","image":"'"${node_image}"'","user_data":

"#!/bin/bash

apt-get -y update
apt-get -y install openssl jq
mkdir ~/certs
cd ~/certs
openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 \
    -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.origintrail.com" \
    -keyout node1.origintrail.com.key  -out node1.origintrail.com.csr

touch ~/.origintrail_noderc 
 
cat > ~/.origintrail_noderc <<!
.origintrail_noderc_default
{
 "node_hostname": "https://node1.origintrail.com"
}
!

jq "." ~/.origintrail_noderc

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common 

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

apt-get -y  update
apt-get -y install docker-ce 

systemctl enable docker
systemctl start docker

#Create and Run ot-node docker container
docker run -i --log-driver json-file --log-opt max-size=1g --name=otnode -p 8900:8900 -p 5278:5278 -p 3000:3000 -v ~/certs:/ot-node/certs -v ~/.origintrail_noderc:/ot-node/.origintrail_noderc origintrail/ot-node:release_testnet


",
      "ssh_keys":['$SSH_ID']}' \
      -H "Authorization: Bearer $TOKEN" \
      -H "Content-Type: application/json"





#Node 2 Deploy
echo "Deploying Node2 ......."

curl -X POST "https://api.digitalocean.com/v2/droplets" \
      -d'{"name":"'"$node2_hostname"'","region":"'"${node2_region}"'","size":"'"${node_size}"'","image":"'"${node_image}"'","user_data":

"#!/bin/bash

apt-get -y update
apt-get -y install openssl jq
mkdir ~/certs
cd ~/certs
openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 \
    -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.origintrail.com" \
    -keyout node2.origintrail.com.key  -out node2.origintrail.com.csr

touch ~/.origintrail_noderc 
 
cat > ~/.origintrail_noderc <<!
.origintrail_noderc_default
{
 "node_hostname": "https://node2.origintrail.com"
}
!

jq "." ~/.origintrail_noderc

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common 

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

apt-get -y  update
apt-get -y install docker-ce 

systemctl enable docker
systemctl start docker

#Create and Run ot-node docker container
docker run -i --log-driver json-file --log-opt max-size=1g --name=otnode -p 8900:8900 -p 5278:5278 -p 3000:3000 -v ~/certs:/ot-node/certs -v ~/.origintrail_noderc:/ot-node/.origintrail_noderc origintrail/ot-node:release_testnet


",
      "ssh_keys":['$SSH_ID']}' \
      -H "Authorization: Bearer $TOKEN" \
      -H "Content-Type: application/json"
	  
	  
	  
	  
#Node 3 Deploy
echo "Deploying Node3 ......."

curl -X POST "https://api.digitalocean.com/v2/droplets" \
      -d'{"name":"'"$node3_hostname"'","region":"'"${node3_region}"'","size":"'"${node_size}"'","image":"'"${node_image}"'","user_data":

"#!/bin/bash

apt-get -y update
apt-get -y install openssl jq
mkdir ~/certs
cd ~/certs
openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 \
    -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.origintrail.com" \
    -keyout node3.origintrail.com.key  -out node3.origintrail.com.csr

touch ~/.origintrail_noderc 
 
cat > ~/.origintrail_noderc <<!
.origintrail_noderc_default
{
 "node_hostname": "https://node3.origintrail.com"
}
!

jq "." ~/.origintrail_noderc

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common 

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

apt-get -y  update
apt-get -y install docker-ce 

systemctl enable docker
systemctl start docker

#Create and Run ot-node docker container
docker run -i --log-driver json-file --log-opt max-size=1g --name=otnode -p 8900:8900 -p 5278:5278 -p 3000:3000 -v ~/certs:/ot-node/certs -v ~/.origintrail_noderc:/ot-node/.origintrail_noderc origintrail/ot-node:release_testnet


",
      "ssh_keys":['$SSH_ID']}' \
      -H "Authorization: Bearer $TOKEN" \
      -H "Content-Type: application/json"
	  
	  
	  
	  
#Node 4 Deploy
echo "Deploying Node4 ......."

curl -X POST "https://api.digitalocean.com/v2/droplets" \
      -d'{"name":"'"$node4_hostname"'","region":"'"${node4_region}"'","size":"'"${node_size}"'","image":"'"${node_image}"'","user_data":

"#!/bin/bash

apt-get -y update
apt-get -y install openssl jq
mkdir ~/certs
cd ~/certs
openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 \
    -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.origintrail.com" \
    -keyout node4.origintrail.com.key  -out node4.origintrail.com.csr

touch ~/.origintrail_noderc 
 
cat > ~/.origintrail_noderc <<!
.origintrail_noderc_default
{
 "node_hostname": "https://node4.origintrail.com"
}
!

jq "." ~/.origintrail_noderc

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common 

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

apt-get -y  update
apt-get -y install docker-ce 

systemctl enable docker
systemctl start docker

#Create and Run ot-node docker container
docker run -i --log-driver json-file --log-opt max-size=1g --name=otnode -p 8900:8900 -p 5278:5278 -p 3000:3000 -v ~/certs:/ot-node/certs -v ~/.origintrail_noderc:/ot-node/.origintrail_noderc origintrail/ot-node:release_testnet


",
      "ssh_keys":['$SSH_ID']}' \
      -H "Authorization: Bearer $TOKEN" \
      -H "Content-Type: application/json"
	  
	  
	  


#Node 5 Deploy
echo "Deploying Node5 ......."

curl -X POST "https://api.digitalocean.com/v2/droplets" \
      -d'{"name":"'"$node5_hostname"'","region":"'"${node5_region}"'","size":"'"${node_size}"'","image":"'"${node_image}"'","user_data":

"#!/bin/bash

apt-get -y update
apt-get -y install openssl jq
mkdir ~/certs
cd ~/certs
openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 \
    -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.origintrail.com" \
    -keyout node5.origintrail.com.key  -out node5.origintrail.com.csr

touch ~/.origintrail_noderc 
 
cat > ~/.origintrail_noderc <<!
.origintrail_noderc_default
{
 "node_hostname": "https://node5.origintrail.com"
}
!

jq "." ~/.origintrail_noderc

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common 

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

apt-get -y  update
apt-get -y install docker-ce 

systemctl enable docker
systemctl start docker

#Create and Run ot-node docker container
docker run -i --log-driver json-file --log-opt max-size=1g --name=otnode -p 8900:8900 -p 5278:5278 -p 3000:3000 -v ~/certs:/ot-node/certs -v ~/.origintrail_noderc:/ot-node/.origintrail_noderc origintrail/ot-node:release_testnet


",
      "ssh_keys":['$SSH_ID']}' \
      -H "Authorization: Bearer $TOKEN" \
      -H "Content-Type: application/json"
	  


#Done
echo "Deployment of nodes done :)"



	  
