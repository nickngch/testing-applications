#!/bin/bash

if [ $# -lt 1 ]; then
	echo "Usage:"
	echo "Option:"
	echo "    1: Gitea"
	echo "    2: Minio"
	echo "    3: Elasticsearch"
	echo "    4: Kibana"
	echo "    5: Registry"
        echo "    6: Elasticsearch + Kibana"
    exit
fi


gitea() {
echo "##### Installing Gitea"
  docker-compose up -d reverse-proxy gitea
}

minio() {
echo "##### Installing Minio"
  docker-compose up -d reverse-proxy minio
}

elasticsearch() {
echo "##### Installing Elasticsearch"
  sysctl -w vm.max_map_count=262144
  docker-compose up -d reverse-proxy elasticsearch
}

kibana() {
echo "##### Installing Kibana"
  docker-compose up -d reverse-proxy kibana
}

registry() {
echo "##### Installing Registry"
  docker-compose up -d reverse-proxy registry
}

ek() {
echo "##### Installing Elasticsearch + Kibana"
  sysctl -w vm.max_map_count=262144
  docker-compose up -d reverse-proxy elasticsearch kibana
}


case "$1" in
1)	gitea
	;;

2)	minio
	;;

3)	elasticsearch
	;;

4)	kibana
	;;

5)	registry
	;;

6)	ek
	;;

*)	echo "Invalid option"
	;;
esac
