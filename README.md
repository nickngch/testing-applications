# testing-applications
Docker compose file which contain applications needed for testing

### Pre-requisites
- docker
- docker-compose

### How to use
1. git clone
2. chmod +x bootstrap.sh or bootstrap_https.sh
3. ./bootstrap.sh $app

```
$app
1: Gitea
2: Minio
3: Elasticsearch
4: Kibana
5: Registry
6: Elasticsearch + Kibana
```

### Configure vm.max_map_count for elasticsearch
- sysctl -w vm.max_map_count=262144
