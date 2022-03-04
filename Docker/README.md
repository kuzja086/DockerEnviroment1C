# DockerEnviroment1C
## Сертификаты
/var/lib/docker/swarm/certificates/
Правим файл для подключения сертификатов
/lib/systemd/system/docker.service
Добавляем в него.
      -H tcp://0.0.0.0:2376 \
      --tlsverify \
      --tlscacert=/var/lib/docker/swarm/certificates/swarm-root-ca.crt \
      --tlscert=/var/lib/docker/swarm/certificates/swarm-node.crt \
      --tlskey=/var/lib/docker/swarm/certificates/swarm-node.key
# Настройка Небезопасного реестра образов(лучше безопасного)
Для unsecure registry
Resolved the issue by adding a file /etc/docker/daemon.json with following content

{
    "insecure-registries" : [ "hostname.cloudapp.net:5000" ]
}
And then restart docker

sudo systemctl daemon-reload
sudo systemctl restart docker

# Полезные команды
docker exec -it <ContainerName> /bin/sh - Заходим в контейнер в баш
