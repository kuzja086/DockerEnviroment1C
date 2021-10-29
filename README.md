# DockerEnviroment1C
/var/lib/docker/swarm/certificates/
/lib/systemd/system/docker.service
      -H tcp://0.0.0.0:2376 \
      --tlsverify \
      --tlscacert=/var/lib/docker/swarm/certificates/swarm-root-ca.crt \
      --tlscert=/var/lib/docker/swarm/certificates/swarm-node.crt \
      --tlskey=/var/lib/docker/swarm/certificates/swarm-node.key

В настройках Jenkins в Глобальных настройках в глобальных переменных ставим GIT_LFS_SKIP_SMUDGE=1 

*https://github.com/sameersbn/docker-gitlab - docker-compose.yml -GITLAB

Для unsecure registry
Resolved the issue by adding a file /etc/docker/daemon.json with following content

{
    "insecure-registries" : [ "hostname.cloudapp.net:5000" ]
}
And then restart docker

sudo systemctl daemon-reload
sudo systemctl restart docker
