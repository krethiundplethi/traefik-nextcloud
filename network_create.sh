
sudo docker network rm br0

sudo docker network create \
  --driver=bridge \
  --subnet=172.20.0.0/16 \
  --ip-range=172.20.0.0/24 \
  -o com.docker.network.bridge.name="br0" \
  -o com.docker.network.bridge.enable_ip_masquerade="true" \
  -o com.docker.network.bridge.enable_icc="true" \
  br0

sudo docker network inspect br0
