#!/bin/bash
echo " #################### export realm ####################"
service_name="keycloak_keycloak"
realm_name="charger"

container_id=$(docker ps --filter "label=com.docker.swarm.service.name=$service_name" --format "{{.ID}}")
container_name=$(docker ps --filter "label=com.docker.swarm.service.name=$service_name" --format "{{.Names}}")

echo "From $container_name with id $container_id export realm $realm_name"

docker exec $container_name /opt/keycloak/bin/kc.sh export \
  --dir /opt/keycloak/data/export \
  --realm $realm_name \
  --users realm_file

docker exec $container_name cat /opt/keycloak/data/export/$realm_name-realm.json > /tmp/$realm_name.json
