# DockerEnviroment1C
/var/lib/docker/swarm/certificates/
/lib/systemd/system/docker.service
      -H tcp://0.0.0.0:2376 \
      --tlsverify \
      --tlscacert=/var/lib/docker/swarm/certificates/swarm-root-ca.crt \
      --tlscert=/var/lib/docker/swarm/certificates/swarm-node.crt \
      --tlskey=/var/lib/docker/swarm/certificates/swarm-node.key

*https://github.com/sameersbn/docker-gitlab - docker-compose.yml -GITLAB
