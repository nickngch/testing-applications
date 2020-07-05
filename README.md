# testing-applications
Docker compose file which contain applications needed for testing

### Pre-requisites
- docker
- docker-compose

### Usage
1. git clone
2. Start application with docker-compose up command (e.g.: docker-compose up -d reverse-proxy gitea)

### Configure vm.max_map_count for elasticsearch
- sysctl -w vm.max_map_count=262144
